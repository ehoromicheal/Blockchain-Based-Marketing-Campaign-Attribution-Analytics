;; Marketing Analyst Verification Contract
;; Manages verification and permissions for marketing analysts

(define-constant CONTRACT_OWNER tx-sender)
(define-constant ERR_UNAUTHORIZED (err u100))
(define-constant ERR_ALREADY_VERIFIED (err u101))
(define-constant ERR_NOT_VERIFIED (err u102))

;; Data maps
(define-map verified-analysts principal bool)
(define-map analyst-credentials principal {
    name: (string-ascii 50),
    certification: (string-ascii 100),
    verified-at: uint
})

;; Public functions
(define-public (verify-analyst (analyst principal) (name (string-ascii 50)) (certification (string-ascii 100)))
    (begin
        (asserts! (is-eq tx-sender CONTRACT_OWNER) ERR_UNAUTHORIZED)
        (asserts! (is-none (map-get? verified-analysts analyst)) ERR_ALREADY_VERIFIED)
        (map-set verified-analysts analyst true)
        (map-set analyst-credentials analyst {
            name: name,
            certification: certification,
            verified-at: block-height
        })
        (ok true)
    )
)

(define-public (revoke-analyst (analyst principal))
    (begin
        (asserts! (is-eq tx-sender CONTRACT_OWNER) ERR_UNAUTHORIZED)
        (asserts! (is-some (map-get? verified-analysts analyst)) ERR_NOT_VERIFIED)
        (map-delete verified-analysts analyst)
        (map-delete analyst-credentials analyst)
        (ok true)
    )
)

;; Read-only functions
(define-read-only (is-verified-analyst (analyst principal))
    (default-to false (map-get? verified-analysts analyst))
)

(define-read-only (get-analyst-credentials (analyst principal))
    (map-get? analyst-credentials analyst)
)
