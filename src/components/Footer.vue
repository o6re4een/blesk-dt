<template>
    <div class="footer" id="contacts">
        <div class="footer__elements container">
            <img src="../assets/footerlogo.png" alt="" class="footer__logo">
            <div class="footer__arr">
                <div class="footer__name">
                    <div class="footer__name-item">
                        Phone
                    </div>
                    <div class="footer__name-item">
                        Instagram
                    </div>
                    <div class="footer__name-item">
                        Telegram
                    </div>
                </div>
                <div class="footer__link">
                    <a class="footer__link-item" href="+79123456789">
                        +79123456789
                    </a>
                    <a class="footer__link-item" href="https://www.instagram.com/blesk_team_detail/profilecard/?igsh=ejdqcjBxdjUzOXQ5">
                        @BLESK_TEAM_DETAIL
                    </a>
                    <a class="footer__link-item" href="https://t.me/blesk_team_96">
                        @blesk_team_96
                    </a>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>

.footer__logo {
    height: 217px;
}

.footer {
    display: flex;
    justify-content: center;
}

.footer__elements {
    display: flex;
    flex-direction: row;
}

.footer__item {
    display: flex;
    flex-direction: row;
}

.footer__arr {
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 100px;
    font-size: 2rem;
    color: white;
}

.footer__link{
    display: flex;
    flex-direction: column;
}

.footer__logo {
    /* padding-right: 168px; */
}


.footer__name-item {
    padding: 10px;
}

.footer__link-item {
    padding: 10px;
    color: white;
}

.footer__link-item:hover {
    color: var(--orange-color);
}

@media screen and (max-width: 1024px) {
    .footer__arr {
        font-size:  1.77rem;
        gap: 90px;
    }
    .footer__logo {
        height: 90%;
    }
}
@media screen and (max-width: 768px) {
    .footer__arr {
        font-size:  1.57rem;
        gap: 80px;
    }
    .footer__logo {
        height: 80%;
    }
}
@media screen and (max-width: 576px) {
    .footer__arr {
        font-size:  1.4rem;
        gap: 70px;
    }
    .footer__logo {
        height: 70%;
    }
}

@media screen and (max-width: 340px) {
    .footer__arr {
        font-size:  0.82rem;
        gap: 60px;
    }
    .footer__logo {
        height: 60%;
    }
}

</style>