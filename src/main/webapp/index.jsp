<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Premium Shopping</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@600;700;800&display=swap" rel="stylesheet">

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    >

    <style>
        :root {
            --black: #08090b;
            --dark: #101216;
            --dark-2: #17191e;
            --dark-3: #202329;

            --white: #ffffff;
            --text: #15171a;
            --muted: #777c85;
            --light: #f5f5f3;

            --lime: #d7ff45;
            --lime-dark: #b9df2c;

            --border: #e7e7e4;
            --radius: 20px;

            --container: 1320px;
            --shadow: 0 15px 50px rgba(0,0,0,.08);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "DM Sans", sans-serif;
            background: #fff;
            color: var(--text);
            line-height: 1.5;
        }

        body.no-scroll {
            overflow: hidden;
        }

        button,
        input {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        img {
            display: block;
            width: 100%;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .container {
            width: min(var(--container), calc(100% - 40px));
            margin: auto;
        }

        /* =========================
           HEADER
        ========================= */

        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255,255,255,.94);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(0,0,0,.06);
        }

        .header {
            height: 78px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
        }

        .logo {
            font-family: Manrope, sans-serif;
            font-size: 24px;
            font-weight: 800;
            letter-spacing: -1px;
        }

        .logo span {
            color: #8bb300;
        }

        .nav {
            display: flex;
            align-items: center;
            gap: 34px;
            font-size: 14px;
            font-weight: 600;
        }

        .nav a {
            position: relative;
            color: #555960;
            transition: .2s;
        }

        .nav a:hover,
        .nav a.active {
            color: #111;
        }

        .nav a.active::after {
            content: "";
            position: absolute;
            width: 5px;
            height: 5px;
            background: var(--lime);
            border-radius: 50%;
            left: 50%;
            bottom: -12px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .header-btn {
            width: 42px;
            height: 42px;
            border: 0;
            background: #f4f4f2;
            border-radius: 50%;
            display: grid;
            place-items: center;
            color: #17191c;
            transition: .2s;
        }

        .header-btn:hover {
            background: var(--lime);
            transform: translateY(-2px);
        }

        .cart-button {
            position: relative;
        }

        .cart-count {
            position: absolute;
            right: -2px;
            top: -3px;
            min-width: 18px;
            height: 18px;
            padding: 0 4px;
            display: grid;
            place-items: center;
            border-radius: 20px;
            background: var(--lime);
            color: #111;
            font-size: 10px;
            font-weight: 800;
        }

        .mobile-menu-btn {
            display: none;
            border: 0;
            background: transparent;
            font-size: 22px;
        }

        /* =========================
           HERO
        ========================= */

        .hero {
            padding: 24px 0 0;
        }

        .hero-card {
            min-height: 620px;
            border-radius: 28px;
            overflow: hidden;
            position: relative;
            display: flex;
            align-items: center;
            background:
                linear-gradient(
                    90deg,
                    rgba(5,7,9,.92) 0%,
                    rgba(5,7,9,.75) 40%,
                    rgba(5,7,9,.05) 100%
                ),
                url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85")
                center/cover;
        }

        .hero-content {
            width: 620px;
            padding: 60px;
            color: white;
        }

        .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(215,255,69,.12);
            border: 1px solid rgba(215,255,69,.3);
            color: var(--lime);
            padding: 8px 13px;
            border-radius: 30px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 24px;
        }

        .hero h1 {
            font-family: Manrope, sans-serif;
            font-size: clamp(48px, 6vw, 78px);
            line-height: .98;
            letter-spacing: -4px;
            margin-bottom: 24px;
        }

        .hero h1 span {
            color: var(--lime);
        }

        .hero p {
            color: rgba(255,255,255,.72);
            max-width: 500px;
            font-size: 16px;
            margin-bottom: 34px;
        }

        .hero-actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            border: 0;
            border-radius: 12px;
            padding: 14px 22px;
            font-weight: 700;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            transition: .25s;
        }

        .btn-primary {
            background: var(--lime);
            color: #111;
        }

        .btn-primary:hover {
            background: white;
            transform: translateY(-2px);
        }

        .btn-dark {
            background: rgba(255,255,255,.1);
            border: 1px solid rgba(255,255,255,.2);
            color: white;
        }

        .btn-dark:hover {
            background: white;
            color: #111;
        }

        /* =========================
           BENEFITS
        ========================= */

        .benefits {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            border-bottom: 1px solid var(--border);
            padding: 28px 0;
        }

        .benefit {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 14px;
            border-right: 1px solid var(--border);
        }

        .benefit:last-child {
            border: 0;
        }

        .benefit-icon {
            width: 42px;
            height: 42px;
            background: var(--light);
            border-radius: 12px;
            display: grid;
            place-items: center;
        }

        .benefit strong {
            display: block;
            font-size: 13px;
        }

        .benefit span {
            font-size: 12px;
            color: var(--muted);
        }

        /* =========================
           SECTION
        ========================= */

        .section {
            padding: 90px 0;
        }

        .section-head {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-bottom: 32px;
            gap: 20px;
        }

        .section-label {
            color: #8ba800;
            font-size: 12px;
            text-transform: uppercase;
            font-weight: 800;
            letter-spacing: 1.5px;
            margin-bottom: 8px;
        }

        .section-title {
            font-family: Manrope, sans-serif;
            font-size: 38px;
            line-height: 1.05;
            letter-spacing: -1.8px;
        }

        .section-description {
            color: var(--muted);
            margin-top: 8px;
        }

        .view-all {
            font-size: 14px;
            font-weight: 700;
            border-bottom: 1px solid #111;
            padding-bottom: 4px;
        }

        /* =========================
           CATEGORIES
        ========================= */

        .category-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 14px;
        }

        .category {
            min-height: 190px;
            background: var(--light);
            border-radius: 18px;
            padding: 22px;
            position: relative;
            overflow: hidden;
            transition: .25s;
            cursor: pointer;
        }

        .category:hover {
            background: var(--black);
            color: white;
            transform: translateY(-5px);
        }

        .category-icon {
            width: 48px;
            height: 48px;
            border-radius: 14px;
            background: white;
            display: grid;
            place-items: center;
            margin-bottom: 35px;
            color: #111;
        }

        .category h3 {
            font-size: 15px;
        }

        .category p {
            color: var(--muted);
            font-size: 12px;
            margin-top: 3px;
        }

        .category:hover p {
            color: #a8adb4;
        }

        .category-arrow {
            position: absolute;
            right: 18px;
            bottom: 18px;
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background: white;
            color: #111;
            display: grid;
            place-items: center;
            font-size: 11px;
        }

        /* =========================
           PRODUCT TOOLBAR
        ========================= */

        .product-toolbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 15px;
            margin-bottom: 25px;
        }

        .filters {
            display: flex;
            gap: 8px;
            overflow-x: auto;
        }

        .filter {
            white-space: nowrap;
            padding: 10px 15px;
            background: var(--light);
            border: 0;
            border-radius: 10px;
            color: #60646b;
            font-size: 13px;
            font-weight: 600;
        }

        .filter.active {
            background: #111;
            color: white;
        }

        .sort {
            padding: 10px 14px;
            border: 1px solid var(--border);
            border-radius: 10px;
            background: white;
        }

        /* =========================
           PRODUCTS
        ========================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product {
            position: relative;
            min-width: 0;
        }

        .product-image {
            height: 310px;
            border-radius: 18px;
            overflow: hidden;
            background: var(--light);
            position: relative;
        }

        .product-image img {
            height: 100%;
            object-fit: cover;
            transition: .5s;
        }

        .product:hover .product-image img {
            transform: scale(1.06);
        }

        .product-badge {
            position: absolute;
            left: 12px;
            top: 12px;
            background: white;
            padding: 7px 10px;
            border-radius: 8px;
            font-size: 10px;
            font-weight: 800;
            z-index: 2;
        }

        .product-badge.sale {
            background: #ff4f5e;
            color: white;
        }

        .wishlist {
            position: absolute;
            right: 12px;
            top: 12px;
            width: 38px;
            height: 38px;
            border: 0;
            background: rgba(255,255,255,.9);
            border-radius: 50%;
            display: grid;
            place-items: center;
            z-index: 2;
        }

        .wishlist.active {
            color: #ff4757;
        }

        .quick-add {
            position: absolute;
            bottom: 12px;
            left: 12px;
            right: 12px;
            border: 0;
            background: #111;
            color: white;
            padding: 13px;
            border-radius: 10px;
            font-weight: 700;
            opacity: 0;
            transform: translateY(8px);
            transition: .25s;
        }

        .product:hover .quick-add {
            opacity: 1;
            transform: translateY(0);
        }

        .product-info {
            padding: 15px 2px;
        }

        .product-category {
            color: #92969d;
            text-transform: uppercase;
            font-size: 10px;
            letter-spacing: 1px;
            font-weight: 700;
        }

        .product-title {
            font-size: 15px;
            font-weight: 700;
            margin: 5px 0 8px;
        }

        .product-meta {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .product-price {
            font-weight: 800;
        }

        .old-price {
            margin-left: 6px;
            color: #999;
            text-decoration: line-through;
            font-size: 12px;
            font-weight: 500;
        }

        .rating {
            color: #f4b400;
            font-size: 12px;
        }

        /* =========================
           SALE
        ========================= */

        .sale-section {
            background: var(--black);
            color: white;
            padding: 90px 0;
        }

        .sale-wrapper {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
        }

        .sale-image {
            border-radius: 24px;
            overflow: hidden;
            height: 520px;
        }

        .sale-image img {
            height: 100%;
            object-fit: cover;
        }

        .sale-content .section-label {
            color: var(--lime);
        }

        .sale-content h2 {
            font-family: Manrope;
            font-size: clamp(42px,5vw,68px);
            line-height: 1;
            letter-spacing: -3px;
            margin-bottom: 20px;
        }

        .sale-content p {
            color: #969aa2;
            max-width: 480px;
            margin-bottom: 30px;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin-bottom: 30px;
        }

        .timer-box {
            width: 80px;
            height: 75px;
            background: #181b20;
            border: 1px solid #292d34;
            border-radius: 12px;
            display: grid;
            place-items: center;
            align-content: center;
        }

        .timer-box strong {
            font-size: 22px;
        }

        .timer-box span {
            color: #737983;
            font-size: 10px;
            text-transform: uppercase;
        }

        .sale-price {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 25px;
        }

        .sale-price strong {
            font-size: 30px;
        }

        .sale-price del {
            color: #666b73;
        }

        /* =========================
           TESTIMONIALS
        ========================= */

        .reviews {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .review {
            padding: 28px;
            border: 1px solid var(--border);
            border-radius: 18px;
        }

        .review-stars {
            color: #f5b400;
            margin-bottom: 18px;
        }

        .review-text {
            font-size: 15px;
            line-height: 1.7;
            margin-bottom: 24px;
        }

        .review-user {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .review-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
        }

        .review-user strong {
            display: block;
            font-size: 13px;
        }

        .review-user span {
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================
           NEWSLETTER
        ========================= */

        .newsletter {
            background: var(--lime);
            border-radius: 25px;
            padding: 60px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
        }

        .newsletter h2 {
            font-family: Manrope;
            font-size: 36px;
            letter-spacing: -1.5px;
        }

        .newsletter p {
            margin-top: 6px;
            color: #515b25;
        }

        .newsletter-form {
            display: flex;
            background: white;
            border-radius: 12px;
            padding: 5px;
            min-width: 420px;
        }

        .newsletter-form input {
            border: 0;
            outline: 0;
            padding: 12px;
            flex: 1;
            min-width: 0;
        }

        .newsletter-form button {
            border: 0;
            background: #111;
            color: white;
            border-radius: 9px;
            padding: 0 20px;
            font-weight: 700;
        }

        /* =========================
           FOOTER
        ========================= */

        footer {
            background: var(--black);
            color: white;
            margin-top: 90px;
            padding: 70px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr repeat(3,1fr);
            gap: 50px;
            padding-bottom: 50px;
            border-bottom: 1px solid #25272c;
        }

        .footer-brand {
            font-family: Manrope;
            font-size: 25px;
            font-weight: 800;
        }

        .footer-brand span {
            color: var(--lime);
        }

        .footer-description {
            color: #70747c;
            max-width: 330px;
            margin-top: 15px;
            font-size: 14px;
        }

        .footer h4 {
            margin-bottom: 18px;
            font-size: 13px;
        }

        .footer a {
            display: block;
            color: #777c84;
            font-size: 13px;
            margin: 10px 0;
        }

        .footer a:hover {
            color: var(--lime);
        }

        .footer-bottom {
            padding-top: 22px;
            display: flex;
            justify-content: space-between;
            color: #62666e;
            font-size: 12px;
        }

        /* =========================
           CART DRAWER
        ========================= */

        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.5);
            z-index: 150;
            opacity: 0;
            pointer-events: none;
            transition: .3s;
        }

        .overlay.active {
            opacity: 1;
            pointer-events: auto;
        }

        .cart-drawer {
            position: fixed;
            right: 0;
            top: 0;
            bottom: 0;
            width: min(430px,100%);
            background: white;
            z-index: 200;
            transform: translateX(100%);
            transition: .35s;
            display: flex;
            flex-direction: column;
        }

        .cart-drawer.active {
            transform: translateX(0);
        }

        .cart-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 24px;
            border-bottom: 1px solid var(--border);
        }

        .cart-header h3 {
            font-family: Manrope;
        }

        .close-cart {
            width: 38px;
            height: 38px;
            border: 0;
            background: var(--light);
            border-radius: 50%;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 20px;
        }

        .cart-item {
            display: flex;
            gap: 12px;
            margin-bottom: 18px;
        }

        .cart-item img {
            width: 75px;
            height: 75px;
            object-fit: cover;
            border-radius: 10px;
        }

        .cart-item-info {
            flex: 1;
        }

        .cart-item-info h4 {
            font-size: 13px;
            margin-bottom: 5px;
        }

        .cart-item-info span {
            font-size: 13px;
            font-weight: 700;
        }

        .remove-item {
            border: 0;
            background: transparent;
            color: #aaa;
        }

        .empty-cart {
            height: 100%;
            display: grid;
            place-items: center;
            text-align: center;
            color: var(--muted);
        }

        .empty-cart i {
            font-size: 42px;
            margin-bottom: 15px;
            color: #ccc;
        }

        .cart-footer {
            padding: 20px;
            border-top: 1px solid var(--border);
        }

        .cart-total {
            display: flex;
            justify-content: space-between;
            font-size: 18px;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .checkout {
            width: 100%;
            border: 0;
            background: #111;
            color: white;
            padding: 15px;
            border-radius: 10px;
            font-weight: 700;
        }

        /* =========================
           TOAST
        ========================= */

        .toast {
            position: fixed;
            left: 50%;
            bottom: 25px;
            transform: translate(-50%,20px);
            background: #111;
            color: white;
            padding: 13px 20px;
            border-radius: 10px;
            font-size: 13px;
            z-index: 300;
            opacity: 0;
            pointer-events: none;
            transition: .3s;
        }

        .toast.show {
            opacity: 1;
            transform: translate(-50%,0);
        }

        /* =========================
           RESPONSIVE
        ========================= */

        @media(max-width:1100px) {

            .nav {
                gap: 18px;
            }

            .category-grid {
                grid-template-columns: repeat(3,1fr);
            }

            .products {
                grid-template-columns: repeat(3,1fr);
            }

            .benefits {
                grid-template-columns: repeat(2,1fr);
            }

            .benefit {
                padding: 15px;
                border-bottom: 1px solid var(--border);
            }

            .benefit:nth-child(2) {
                border-right: 0;
            }

            .benefit:nth-child(3),
            .benefit:nth-child(4) {
                border-bottom: 0;
            }

            .newsletter {
                flex-direction: column;
                align-items: flex-start;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width:800px) {

            .nav {
                display: none;
            }

            .mobile-menu-btn {
                display: block;
            }

            .header {
                gap: 10px;
            }

            .header-actions .header-btn:first-child {
                display: none;
            }

            .hero-card {
                min-height: 540px;
                background-position: 65% center;
            }

            .hero-content {
                padding: 35px;
            }

            .hero h1 {
                letter-spacing: -2px;
            }

            .sale-wrapper {
                grid-template-columns: 1fr;
            }

            .sale-image {
                height: 400px;
                order: 2;
            }

            .reviews {
                grid-template-columns: 1fr;
            }
        }

        @media(max-width:600px) {

            .container {
                width: min(100% - 28px, var(--container));
            }

            .header {
                height: 68px;
            }

            .logo {
                font-size: 21px;
            }

            .header-actions {
                gap: 4px;
            }

            .header-btn {
                width: 38px;
                height: 38px;
            }

            .hero {
                padding-top: 14px;
            }

            .hero-card {
                min-height: 590px;
                border-radius: 20px;
                background:
                    linear-gradient(
                        0deg,
                        rgba(5,7,9,.94),
                        rgba(5,7,9,.3)
                    ),
                    url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1000&q=80")
                    center/cover;
                align-items: flex-end;
            }

            .hero-content {
                padding: 28px 22px;
                width: 100%;
            }

            .hero h1 {
                font-size: 46px;
            }

            .hero p {
                font-size: 14px;
            }

            .benefits {
                grid-template-columns: 1fr;
            }

            .benefit,
            .benefit:nth-child(3),
            .benefit:nth-child(4) {
                border-right: 0;
                border-bottom: 1px solid var(--border);
                justify-content: flex-start;
            }

            .benefit:last-child {
                border-bottom: 0;
            }

            .section {
                padding: 65px 0;
            }

            .section-head {
                display: block;
            }

            .section-title {
                font-size: 32px;
            }

            .view-all {
                display: inline-block;
                margin-top: 18px;
            }

            .category-grid {
                grid-template-columns: repeat(2,1fr);
            }

            .category {
                min-height: 160px;
                padding: 17px;
            }

            .category-icon {
                margin-bottom: 22px;
            }

            .products {
                grid-template-columns: repeat(2,1fr);
                gap: 14px;
            }

            .product-image {
                height: 210px;
            }

            .quick-add {
                opacity: 1;
                transform: none;
                padding: 9px;
                font-size: 11px;
            }

            .product-title {
                font-size: 13px;
            }

            .product-price {
                font-size: 13px;
            }

            .rating {
                font-size: 10px;
            }

            .product-toolbar {
                display: block;
            }

            .sort {
                margin-top: 12px;
            }

            .sale-section {
                padding: 65px 0;
            }

            .sale-content h2 {
                font-size: 45px;
            }

            .sale-image {
                height: 300px;
            }

            .timer-box {
                width: 65px;
                height: 65px;
            }

            .newsletter {
                padding: 35px 22px;
                border-radius: 18px;
            }

            .newsletter h2 {
                font-size: 28px;
            }

            .newsletter-form {
                width: 100%;
                min-width: 0;
            }

            .newsletter-form button {
                padding: 0 12px;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 35px 20px;
            }

            .footer-grid > div:first-child {
                grid-column: 1/-1;
            }

            .footer-bottom {
                display: block;
                line-height: 2;
            }
        }
    </style>
</head>

<body>

<!-- HEADER -->
<header>
    <div class="container header">

        <button class="mobile-menu-btn" id="mobileMenuBtn">
            <i class="fas fa-bars"></i>
        </button>

        <a href="#" class="logo">
            Nexus<span>Shop</span>
        </a>

        <nav class="nav">
            <a href="#" class="active">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Shop</a>
            <a href="#sale">Deals</a>
            <a href="#reviews">Reviews</a>
        </nav>

        <div class="header-actions">

            <button class="header-btn" id="searchButton">
                <i class="fas fa-search"></i>
            </button>

            <button class="header-btn">
                <i class="far fa-user"></i>
            </button>

            <button class="header-btn cart-button" id="cartButton">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartCount">0</span>
            </button>

        </div>
    </div>
</header>


<main>

<!-- HERO -->
<section class="hero">
    <div class="container">

        <div class="hero-card">

            <div class="hero-content">

                <div class="eyebrow">
                    <i class="fas fa-sparkles"></i>
                    New Season 2026
                </div>

                <h1>
                    Designed for<br>
                    <span>your lifestyle.</span>
                </h1>

                <p>
                    Discover premium technology, fashion and everyday essentials
                    carefully selected for people who expect more.
                </p>

                <div class="hero-actions">
                    <button class="btn btn-primary" id="shopNow">
                        Shop collection
                        <i class="fas fa-arrow-right"></i>
                    </button>

                    <button class="btn btn-dark" id="exploreDeals">
                        View deals
                    </button>
                </div>

            </div>

        </div>

    </div>
</section>


<!-- BENEFITS -->
<div class="container">

    <div class="benefits">

        <div class="benefit">
            <div class="benefit-icon">
                <i class="fas fa-truck-fast"></i>
            </div>

            <div>
                <strong>Free shipping</strong>
                <span>On orders over $100</span>
            </div>
        </div>

        <div class="benefit">
            <div class="benefit-icon">
                <i class="fas fa-rotate-left"></i>
            </div>

            <div>
                <strong>Easy returns</strong>
                <span>30-day return policy</span>
            </div>
        </div>

        <div class="benefit">
            <div class="benefit-icon">
                <i class="fas fa-shield-halved"></i>
            </div>

            <div>
                <strong>Secure payment</strong>
                <span>100% protected checkout</span>
            </div>
        </div>

        <div class="benefit">
            <div class="benefit-icon">
                <i class="fas fa-headset"></i>
            </div>

            <div>
                <strong>24/7 support</strong>
                <span>We're here to help</span>
            </div>
        </div>

    </div>

</div>


<!-- CATEGORIES -->
<section class="section" id="categories">

    <div class="container">

        <div class="section-head">
            <div>
                <div class="section-label">Explore</div>
                <h2 class="section-title">Shop by category</h2>
                <p class="section-description">
                    Find exactly what fits your style.
                </p>
            </div>

            <a href="#products" class="view-all">
                View all categories →
            </a>
        </div>

        <div class="category-grid" id="categoriesGrid"></div>

    </div>

</section>


<!-- PRODUCTS -->
<section class="section" id="products" style="background:#fafaf8;">

    <div class="container">

        <div class="section-head">
            <div>
                <div class="section-label">Trending now</div>
                <h2 class="section-title">Popular picks</h2>
                <p class="section-description">
                    Products customers are loving right now.
                </p>
            </div>
        </div>

        <div class="product-toolbar">

            <div class="filters" id="filters">
                <button class="filter active" data-category="all">
                    All products
                </button>

                <button class="filter" data-category="phones">
                    Smartphones
                </button>

                <button class="filter" data-category="laptops">
                    Laptops
                </button>

                <button class="filter" data-category="gadgets">
                    Gadgets
                </button>

                <button class="filter" data-category="fashion">
                    Fashion
                </button>

                <button class="filter" data-category="accessories">
                    Accessories
                </button>
            </div>

            <select class="sort" id="sortProducts">
                <option value="default">Sort: Featured</option>
                <option value="low">Price: Low to high</option>
                <option value="high">Price: High to low</option>
            </select>

        </div>

        <div class="products" id="productsGrid"></div>

    </div>

</section>


<!-- FLASH SALE -->
<section class="sale-section" id="sale">

    <div class="container">

        <div class="sale-wrapper">

            <div class="sale-image">
                <img
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
                    alt="MacBook Air"
                >
            </div>

            <div class="sale-content">

                <div class="section-label">
                    Limited time
                </div>

                <h2>
                    Big savings.<br>
                    Zero compromise.
                </h2>

                <p>
                    Upgrade your setup with the MacBook Air.
                    Powerful performance, exceptional battery life and
                    an impossibly thin design.
                </p>

                <div class="timer">

                    <div class="timer-box">
                        <strong id="days">00</strong>
                        <span>Days</span>
                    </div>

                    <div class="timer-box">
                        <strong id="hours">00</strong>
                        <span>Hours</span>
                    </div>

                    <div class="timer-box">
                        <strong id="minutes">00</strong>
                        <span>Minutes</span>
                    </div>

                    <div class="timer-box">
                        <strong id="seconds">00</strong>
                        <span>Seconds</span>
                    </div>

                </div>

                <div class="sale-price">
                    <strong>$999</strong>
                    <del>$1,199</del>
                </div>

                <button class="btn btn-primary" id="buyDeal">
                    Get the deal
                    <i class="fas fa-arrow-right"></i>
                </button>

            </div>

        </div>

    </div>

</section>


<!-- REVIEWS -->
<section class="section" id="reviews">

    <div class="container">

        <div class="section-head">
            <div>
                <div class="section-label">Customer stories</div>
                <h2 class="section-title">Loved by thousands.</h2>
                <p class="section-description">
                    See why shoppers keep coming back.
                </p>
            </div>
        </div>

        <div class="reviews">

            <article class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p class="review-text">
                    "The entire experience was fantastic. The website was
                    easy to use, shipping was incredibly fast and the product
                    looked even better in person."
                </p>

                <div class="review-user">
                    <img
                        class="review-avatar"
                        src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                        alt="Ava Martin"
                    >

                    <div>
                        <strong>Ava Martin</strong>
                        <span>Verified customer</span>
                    </div>
                </div>

            </article>


            <article class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p class="review-text">
                    "Beautiful products and an extremely smooth checkout.
                    I've already recommended NexusShop to several friends."
                </p>

                <div class="review-user">
                    <img
                        class="review-avatar"
                        src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                        alt="Michael Lee"
                    >

                    <div>
                        <strong>Michael Lee</strong>
                        <span>Verified customer</span>
                    </div>
                </div>

            </article>


            <article class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p class="review-text">
                    "Great selection, excellent prices and customer support
                    that actually responds. This is now my go-to store."
                </p>

                <div class="review-user">
                    <img
                        class="review-avatar"
                        src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                        alt="Sophia Williams"
                    >

                    <div>
                        <strong>Sophia Williams</strong>
                        <span>Verified customer</span>
                    </div>
                </div>

            </article>

        </div>

    </div>

</section>


<!-- NEWSLETTER -->
<section class="container">

    <div class="newsletter">

        <div>
            <h2>Stay ahead of the curve.</h2>
            <p>
                Get early access to launches, private sales and special offers.
            </p>
        </div>

        <form class="newsletter-form" id="newsletterForm">

            <input
                type="email"
                id="newsletterEmail"
                placeholder="Your email address"
                required
            >

            <button type="submit">
                Subscribe
            </button>

        </form>

    </div>

</section>

</main>


<!-- FOOTER -->
<footer>

    <div class="container">

        <div class="footer-grid">

            <div>

                <div class="footer-brand">
                    Nexus<span>Shop</span>
                </div>

                <p class="footer-description">
                    A modern destination for premium products,
                    exceptional design and effortless shopping.
                </p>

            </div>

            <div>
                <h4>Shop</h4>
                <a href="#products">All products</a>
                <a href="#categories">Categories</a>
                <a href="#sale">Deals</a>
                <a href="#">New arrivals</a>
            </div>

            <div>
                <h4>Company</h4>
                <a href="#">About us</a>
                <a href="#">Careers</a>
                <a href="#">Journal</a>
                <a href="#">Contact</a>
            </div>

            <div>
                <h4>Support</h4>
                <a href="#">Help center</a>
                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">Privacy</a>
            </div>

        </div>

        <div class="footer-bottom">
            <span>
                © <span id="year"></span> NexusShop. All rights reserved.
            </span>

            <span>
                Built for better shopping.
            </span>
        </div>

    </div>

</footer>


<!-- CART OVERLAY -->
<div class="overlay" id="overlay"></div>


<!-- CART DRAWER -->
<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">

        <h3>Your bag</h3>

        <button class="close-cart" id="closeCart">
            <i class="fas fa-xmark"></i>
        </button>

    </div>

    <div class="cart-items" id="cartItems"></div>

    <div class="cart-footer">

        <div class="cart-total">
            <span>Total</span>
            <span id="cartTotal">$0</span>
        </div>

        <button class="checkout" id="checkout">
            Proceed to checkout
        </button>

    </div>

</aside>


<!-- TOAST -->
<div class="toast" id="toast"></div>


<script>

    /* =========================
       DATA
    ========================= */

    const categories = [
        {
            id: "phones",
            name: "Smartphones",
            icon: "fa-mobile-screen-button",
            count: "24 products"
        },
        {
            id: "laptops",
            name: "Laptops",
            icon: "fa-laptop",
            count: "18 products"
        },
        {
            id: "gadgets",
            name: "Gadgets",
            icon: "fa-headphones",
            count: "42 products"
        },
        {
            id: "fashion",
            name: "Fashion",
            icon: "fa-shirt",
            count: "86 products"
        },
        {
            id: "accessories",
            name: "Accessories",
            icon: "fa-watch",
            count: "31 products"
        },
        {
            id: "footwear",
            name: "Footwear",
            icon: "fa-shoe-prints",
            count: "27 products"
        }
    ];


    const products = [

        {
            id: 1,
            title: "iPhone 14 Pro Max",
            category: "phones",
            price: 1099,
            oldPrice: 1199,
            rating: 5,
            reviews: 128,
            badge: "New",
            image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 2,
            title: 'MacBook Pro 14"',
            category: "laptops",
            price: 1999,
            rating: 5,
            reviews: 86,
            badge: "Popular",
            image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 3,
            title: "Apple Watch Series 8",
            category: "accessories",
            price: 349,
            oldPrice: 399,
            rating: 5,
            reviews: 214,
            badge: "-13%",
            sale: true,
            image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 4,
            title: "Nike Air Max 270",
            category: "footwear",
            price: 150,
            rating: 4,
            reviews: 53,
            image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 5,
            title: "Sony A7 IV Camera",
            category: "gadgets",
            price: 2499,
            rating: 5,
            reviews: 42,
            badge: "Pro",
            image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 6,
            title: "Minimal Leather Bag",
            category: "fashion",
            price: 180,
            oldPrice: 220,
            rating: 5,
            reviews: 91,
            sale: true,
            badge: "-18%",
            image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 7,
            title: "Premium Travel Backpack",
            category: "accessories",
            price: 79,
            oldPrice: 99,
            rating: 4,
            reviews: 67,
            sale: true,
            badge: "-20%",
            image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 8,
            title: "Sony WH-1000XM5",
            category: "gadgets",
            price: 399,
            rating: 5,
            reviews: 156,
            badge: "Best seller",
            image: "https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=700&q=85"
        }
    ];


    let cart = [];
    let activeCategory = "all";


    /* =========================
       ELEMENTS
    ========================= */

    const categoriesGrid =
        document.getElementById("categoriesGrid");

    const productsGrid =
        document.getElementById("productsGrid");

    const cartCount =
        document.getElementById("cartCount");

    const cartButton =
        document.getElementById("cartButton");

    const cartDrawer =
        document.getElementById("cartDrawer");

    const closeCart =
        document.getElementById("closeCart");

    const overlay =
        document.getElementById("overlay");

    const cartItems =
        document.getElementById("cartItems");

    const cartTotal =
        document.getElementById("cartTotal");

    const toast =
        document.getElementById("toast");


    /* =========================
       TOAST
    ========================= */

    function showToast(message) {

        toast.textContent = message;

        toast.classList.add("show");

        setTimeout(() => {
            toast.classList.remove("show");
        }, 2200);
    }


    /* =========================
       CATEGORIES
    ========================= */

    function renderCategories() {

        categoriesGrid.innerHTML = categories.map(category => `

            <article
                class="category"
                data-category="${category.id}"
            >

                <div class="category-icon">
                    <i class="fas ${category.icon}"></i>
                </div>

                <h3>${category.name}</h3>

                <p>${category.count}</p>

                <div class="category-arrow">
                    <i class="fas fa-arrow-right"></i>
                </div>

            </article>

        `).join("");


        document.querySelectorAll(".category")
            .forEach(category => {

                category.addEventListener("click", () => {

                    activeCategory =
                        category.dataset.category;

                    document.querySelectorAll(".filter")
                        .forEach(btn => {

                            btn.classList.toggle(
                                "active",
                                btn.dataset.category === activeCategory
                            );

                        });

                    renderProducts();

                    document
                        .getElementById("products")
                        .scrollIntoView({
                            behavior: "smooth"
                        });

                });

            });

    }


    /* =========================
       PRODUCTS
    ========================= */

    function renderProducts() {

        let filtered = [...products];

        if (activeCategory !== "all") {

            filtered = filtered.filter(
                product =>
                    product.category === activeCategory
            );

        }


        const sort =
            document.getElementById("sortProducts").value;


        if (sort === "low") {

            filtered.sort(
                (a,b) => a.price - b.price
            );

        }

        if (sort === "high") {

            filtered.sort(
                (a,b) => b.price - a.price
            );

        }


        if (!filtered.length) {

            productsGrid.innerHTML = `
                <div style="
                    grid-column:1/-1;
                    text-align:center;
                    padding:70px;
                    color:#777;
                ">
                    No products found.
                </div>
            `;

            return;
        }


        productsGrid.innerHTML =
            filtered.map(product => `

                <article class="product">

                    ${
                        product.badge
                        ? `
                            <span class="
                                product-badge
                                ${product.sale ? "sale" : ""}
                            ">
                                ${product.badge}
                            </span>
                        `
                        : ""
                    }

                    <button
                        class="wishlist"
                        data-wishlist="${product.id}"
                    >
                        <i class="far fa-heart"></i>
                    </button>

                    <div class="product-image">

                        <img
                            src="${product.image}"
                            alt="${product.title}"
                            loading="lazy"
                        >

                        <button
                            class="quick-add"
                            data-add="${product.id}"
                        >
                            <i class="fas fa-plus"></i>
                            Add to bag
                        </button>

                    </div>

                    <div class="product-info">

                        <div class="product-category">
                            ${product.category}
                        </div>

                        <h3 class="product-title">
                            ${product.title}
                        </h3>

                        <div class="product-meta">

                            <div class="product-price">

                                $${product.price.toLocaleString()}

                                ${
                                    product.oldPrice
                                    ? `
                                        <span class="old-price">
                                            $${product.oldPrice.toLocaleString()}
                                        </span>
                                    `
                                    : ""
                                }

                            </div>

                            <div class="rating">
                                ${"★".repeat(product.rating)}
                                <span style="color:#999">
                                    (${product.reviews})
                                </span>
                            </div>

                        </div>

                    </div>

                </article>

            `).join("");


        document.querySelectorAll("[data-add]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    const id =
                        Number(button.dataset.add);

                    addToCart(id);

                });

            });


        document.querySelectorAll("[data-wishlist]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    button.classList.toggle("active");

                    const icon =
                        button.querySelector("i");

                    icon.classList.toggle("far");
                    icon.classList.toggle("fas");

                    showToast(
                        button.classList.contains("active")
                        ? "Added to wishlist"
                        : "Removed from wishlist"
                    );

                });

            });

    }


    /* =========================
       CART
    ========================= */

    function addToCart(id) {

        const product =
            products.find(
                product => product.id === id
            );

        if (!product) return;


        const existing =
            cart.find(
                item => item.id === id
            );


        if (existing) {

            existing.quantity++;

        } else {

            cart.push({
                ...product,
                quantity: 1
            });

        }


        updateCart();

        showToast(
            `${product.title} added to your bag`
        );

    }


    function removeFromCart(id) {

        cart =
            cart.filter(
                item => item.id !== id
            );

        updateCart();

    }


    function updateCart() {

        const count =
            cart.reduce(
                (total,item) =>
                    total + item.quantity,
                0
            );

        cartCount.textContent = count;


        if (!cart.length) {

            cartItems.innerHTML = `

                <div class="empty-cart">

                    <div>

                        <i class="fas fa-bag-shopping"></i>

                        <p>Your bag is empty.</p>

                        <small>
                            Add something you love.
                        </small>

                    </div>

                </div>

            `;

            cartTotal.textContent = "$0";

            return;

        }


        cartItems.innerHTML =
            cart.map(item => `

                <div class="cart-item">

                    <img
                        src="${item.image}"
                        alt="${item.title}"
                    >

                    <div class="cart-item-info">

                        <h4>${item.title}</h4>

                        <span>
                            $${item.price.toLocaleString()}
                            × ${item.quantity}
                        </span>

                    </div>

                    <button
                        class="remove-item"
                        data-remove="${item.id}"
                    >
                        <i class="fas fa-trash"></i>
                    </button>

                </div>

            `).join("");


        const total =
            cart.reduce(
                (sum,item) =>
                    sum + item.price * item.quantity,
                0
            );


        cartTotal.textContent =
            "$" + total.toLocaleString();


        document.querySelectorAll("[data-remove]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    removeFromCart(
                        Number(button.dataset.remove)
                    );

                });

            });

    }


    /* =========================
       CART DRAWER
    ========================= */

    function openCart() {

        cartDrawer.classList.add("active");

        overlay.classList.add("active");

        document.body.classList.add("no-scroll");

    }


    function closeCartDrawer() {

        cartDrawer.classList.remove("active");

        overlay.classList.remove("active");

        document.body.classList.remove("no-scroll");

    }


    cartButton.addEventListener(
        "click",
        openCart
    );


    closeCart.addEventListener(
        "click",
        closeCartDrawer
    );


    overlay.addEventListener(
        "click",
        closeCartDrawer
    );


    /* =========================
       FILTERS
    ========================= */

    document.querySelectorAll(".filter")
        .forEach(button => {

            button.addEventListener("click", () => {

                activeCategory =
                    button.dataset.category;

                document.querySelectorAll(".filter")
                    .forEach(btn =>
                        btn.classList.remove("active")
                    );

                button.classList.add("active");

                renderProducts();

            });

        });


    document
        .getElementById("sortProducts")
        .addEventListener(
            "change",
            renderProducts
        );


    /* =========================
       HERO BUTTONS
    ========================= */

    document
        .getElementById("shopNow")
        .addEventListener("click", () => {

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    document
        .getElementById("exploreDeals")
        .addEventListener("click", () => {

            document
                .getElementById("sale")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    document
        .getElementById("buyDeal")
        .addEventListener("click", () => {

            addToCart(2);

            openCart();

        });


    /* =========================
       NEWSLETTER
    ========================= */

    document
        .getElementById("newsletterForm")
        .addEventListener("submit", event => {

            event.preventDefault();

            const email =
                document
                    .getElementById("newsletterEmail")
                    .value.trim();

            if (!email) return;

            showToast(
                "You're subscribed. Welcome to NexusShop!"
            );

            event.target.reset();

        });


    /* =========================
       COUNTDOWN
    ========================= */

    const saleEnd =
        Date.now() +
        (
            1 * 24 * 60 * 60 * 1000 +
            8 * 60 * 60 * 1000 +
            42 * 60 * 1000
        );


    function updateCountdown() {

        const difference =
            saleEnd - Date.now();


        if (difference <= 0) return;


        const days =
            Math.floor(
                difference /
                (1000 * 60 * 60 * 24)
            );


        const hours =
            Math.floor(
                (difference /
                (1000 * 60 * 60)) % 24
            );


        const minutes =
            Math.floor(
                (difference /
                (1000 * 60)) % 60
            );


        const seconds =
            Math.floor(
                (difference / 1000) % 60
            );


        document.getElementById("days")
            .textContent =
            String(days).padStart(2,"0");


        document.getElementById("hours")
            .textContent =
            String(hours).padStart(2,"0");


        document.getElementById("minutes")
            .textContent =
            String(minutes).padStart(2,"0");


        document.getElementById("seconds")
            .textContent =
            String(seconds).padStart(2,"0");

    }


    setInterval(
        updateCountdown,
        1000
    );


    /* =========================
       MOBILE MENU
    ========================= */

    document
        .getElementById("mobileMenuBtn")
        .addEventListener("click", () => {

            const nav =
                document.querySelector(".nav");

            const visible =
                nav.style.display === "flex";

            nav.style.display =
                visible ? "none" : "flex";

            if (!visible) {

                nav.style.position = "absolute";
                nav.style.top = "68px";
                nav.style.left = "0";
                nav.style.right = "0";
                nav.style.padding = "20px";
                nav.style.background = "white";
                nav.style.flexDirection = "column";
                nav.style.alignItems = "flex-start";
                nav.style.boxShadow =
                    "0 15px 30px rgba(0,0,0,.08)";

            }

        });


    /* =========================
       SEARCH
    ========================= */

    document
        .getElementById("searchButton")
        .addEventListener("click", () => {

            const search =
                prompt(
                    "What are you looking for?"
                );

            if (!search) return;

            const query =
                search.toLowerCase();


            const result =
                products.filter(product =>
                    product.title
                        .toLowerCase()
                        .includes(query) ||
                    product.category
                        .toLowerCase()
                        .includes(query)
                );


            productsGrid.innerHTML =
                result.map(product => `

                    <article class="product">

                        <div class="product-image">

                            <img
                                src="${product.image}"
                                alt="${product.title}"
                            >

                            <button
                                class="quick-add"
                                data-add="${product.id}"
                            >
                                <i class="fas fa-plus"></i>
                                Add to bag
                            </button>

                        </div>

                        <div class="product-info">

                            <div class="product-category">
                                ${product.category}
                            </div>

                            <h3 class="product-title">
                                ${product.title}
                            </h3>

                            <div class="product-meta">

                                <div class="product-price">
                                    $${product.price.toLocaleString()}
                                </div>

                                <div class="rating">
                                    ${"★".repeat(product.rating)}
                                </div>

                            </div>

                        </div>

                    </article>

                `).join("");


            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    /* =========================
       CHECKOUT
    ========================= */

    document
        .getElementById("checkout")
        .addEventListener("click", () => {

            if (!cart.length) {

                showToast(
                    "Your bag is empty."
                );

                return;

            }

            showToast(
                "Checkout flow would open here."
            );

        });


    /* =========================
       INIT
    ========================= */

    document.getElementById("year")
        .textContent =
        new Date().getFullYear();

    renderCategories();

    renderProducts();

    updateCart();

    updateCountdown();

</script>

</body>
</html>
