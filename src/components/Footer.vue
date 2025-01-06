<template>
    <div class="footer" id="contacts">
        <div class="footer__body container">
            <img src="../assets/footerlogo.png" alt="" class="footer__logo">
            <div class="footer__elements">
                <div class="footer__element">
                    <div class="footer__name">
                        <img class="footer__name-img" src="../assets/footer/ph.png" alt="">
                    </div>
                    <a href="+79123456789" class="footer__link">
                        +79126015016
                    </a>
                </div>
                <div class="footer__element">
                    <div class="footer__name">
                        <img class="footer__name-img" src="../assets/footer/inst.png" alt="">
                    </div>
                    <a href="https://www.instagram.com/blesk_team_detail/profilecard/?igsh=ejdqcjBxdjUzOXQ5" class="footer__link">
                        @BLESK_TEAM_DETAIL
                    </a>
                </div>
                <div class="footer__element">
                    <div class="footer__name">
                        <img class="footer__name-img" src="../assets/footer/tg.png" alt="">
                    </div>
                    <a href="https://t.me/blesk_team_96" class="footer__link">
                        @blesk_team_96
                    </a>
                </div>
                <div class="footer__element">
                    <div class="footer__name">
                        <img class="footer__name-img" src="../assets/footer/vk.png" alt="">
                    </div>
                    <a href="https://vk.com/detailing96" class="footer__link">
                        @detailing96
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

.footer__body {
    display: flex;
    flex-direction: row;
    justify-content: space-around;
}

.footer__elements {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    
}

.footer__element {
    display: flex;
    flex-direction: row;
    align-items: center;
}

.footer__item {
    display: flex;
    flex-direction: row;
}

.footer__link {
    padding: 10px;
    color: white;
}

.footer__link:hover {
    color: var(--orange-color);
}

@media screen and (max-width: 1024px) {
   
}
@media screen and (max-width: 768px) {
   
}
@media screen and (max-width: 576px) {
    .footer__logo {
        height: 180px;
    }
    .footer__link {
        font-size: 0.8rem;
    }
    .footer__name-img {
        height: 40px;
    }
}

@media screen and (max-width: 340px) {
 
}

</style>