<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>I Believe In You — אמת EMET: The Truth Shall Set You Free</title>
    <meta name="description" content="Discover EMET — the Hebrew word for Truth. God loves us all and wants peace in His kingdom on earth. Believe, and discover heaven here through love.">
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&family=Lora:ital,wght@0,400;0,500;0,600;1,400&family=Noto+Sans+Hebrew:wght@300;400;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --gold: #C9A84C;
            --gold-light: #E8D48B;
            --gold-dark: #8B6914;
            --cream: #FAF6ED;
            --deep-blue: #1A1A3E;
            --midnight: #0D0D26;
            --warm-white: #FFF9F0;
            --rose: #C46B6B;
            --parchment: #F5E6C8;
            --text-dark: #2C2414;
            --text-light: #F5E6C8;
        }
        *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }
        html { scroll-behavior: smooth; font-size: 16px; }
        body {
            font-family: 'Lora', Georgia, serif;
            color: var(--text-dark);
            background: var(--cream);
            overflow-x: hidden;
            line-height: 1.7;
        }

        /* ═══════════════════════════════════════ */
        /* NAVIGATION                              */
        /* ═══════════════════════════════════════ */
        nav {
            position: fixed; top: 0; left: 0; right: 0; z-index: 1000;
            padding: 1rem 2rem;
            display: flex; justify-content: space-between; align-items: center;
            transition: background 0.5s, box-shadow 0.5s;
        }
        nav.scrolled {
            background: rgba(13, 13, 38, 0.96);
            box-shadow: 0 2px 40px rgba(0,0,0,0.3);
            backdrop-filter: blur(12px);
        }
        .nav-logo {
            font-family: 'Cormorant Garamond', serif;
            font-size: 1.4rem; font-weight: 600;
            color: var(--gold-light); text-decoration: none; letter-spacing: 0.05em;
        }
        .nav-links { display: flex; gap: 2rem; list-style: none; }
        .nav-links a {
            color: var(--gold-light); text-decoration: none;
            font-family: 'Lora', serif; font-size: 0.9rem;
            letter-spacing: 0.08em; text-transform: uppercase;
            transition: color 0.3s; position: relative;
        }
        .nav-links a::after {
            content: ''; position: absolute; bottom: -4px; left: 0;
            width: 0; height: 1px; background: var(--gold); transition: width 0.3s;
        }
        .nav-links a:hover::after { width: 100%; }
        .mobile-toggle {
            display: none; background: none; border: none;
            cursor: pointer; flex-direction: column; gap: 5px;
        }
        .mobile-toggle span { width: 28px; height: 2px; background: var(--gold-light); transition: 0.3s; }

        /* ═══════════════════════════════════════ */
        /* PAGE 1: HERO — ATTENTION GRABBER        */
        /* Full screen Jesus image background      */
        /* ═══════════════════════════════════════ */
        .hero {
            position: relative;
            min-height: 100vh;
            display: flex; flex-direction: column;
            align-items: center; justify-content: center;
            overflow: hidden;
        }
        .hero-bg {
            position: absolute; top: 0; left: 0; right: 0; bottom: 0;
            background: url('jesus-promise.png') center center / cover no-repeat;
            z-index: 0;
        }
        .hero-bg::after {
            content: '';
            position: absolute; top: 0; left: 0; right: 0; bottom: 0;
            background: linear-gradient(
                180deg,
                rgba(13,13,38,0.4) 0%,
                rgba(13,13,38,0.25) 40%,
                rgba(13,13,38,0.45) 75%,
                rgba(13,13,38,0.95) 100%
            );
        }
        .hero-content {
            position: relative; z-index: 2;
            padding: 2rem; max-width: 1000px; text-align: center;
        }
        .hero-tagline {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(0.9rem, 2vw, 1.2rem);
            color: var(--gold-light);
            letter-spacing: 0.3em; text-transform: uppercase;
            margin-bottom: 1rem;
            animation: fadeInDown 1s ease forwards; opacity: 0;
        }
        .hero-hebrew-massive {
            font-family: 'Noto Sans Hebrew', serif;
            font-size: clamp(5rem, 15vw, 12rem);
            font-weight: 700; color: var(--gold);
            line-height: 1; margin-bottom: 0.3rem;
            text-shadow: 0 0 80px rgba(201,168,76,0.4), 0 4px 20px rgba(0,0,0,0.5);
            animation: glowPulse 4s ease-in-out infinite, heroReveal 1.2s ease forwards;
            opacity: 0; animation-delay: 0.3s; direction: rtl;
        }
        @keyframes heroReveal {
            0% { opacity: 0; transform: scale(0.85) translateY(20px); }
            100% { opacity: 1; transform: scale(1) translateY(0); }
        }
        @keyframes glowPulse {
            0%, 100% { text-shadow: 0 0 60px rgba(201,168,76,0.3), 0 4px 20px rgba(0,0,0,0.5); }
            50% { text-shadow: 0 0 120px rgba(201,168,76,0.5), 0 0 200px rgba(201,168,76,0.2), 0 4px 20px rgba(0,0,0,0.5); }
        }
        @keyframes fadeInDown {
            0% { opacity: 0; transform: translateY(-20px); }
            100% { opacity: 1; transform: translateY(0); }
        }
        @keyframes fadeInUp {
            0% { opacity: 0; transform: translateY(30px); }
            100% { opacity: 1; transform: translateY(0); }
        }
        .hero-emet-label {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(1.2rem, 2.5vw, 1.8rem);
            color: #fff; font-weight: 300; letter-spacing: 0.1em;
            margin-bottom: 1.5rem;
            opacity: 0; animation: fadeInUp 1s ease forwards; animation-delay: 0.8s;
        }
        .hero-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(1.6rem, 4vw, 3rem);
            font-weight: 300; color: var(--warm-white);
            line-height: 1.3; margin-bottom: 1.5rem;
            opacity: 0; animation: fadeInUp 1s ease forwards; animation-delay: 1.1s;
        }
        .hero-title em { font-style: italic; color: var(--gold-light); }
        .hero-verse {
            font-family: 'Lora', serif; font-style: italic;
            font-size: 0.95rem; color: rgba(245, 230, 200, 0.7);
            max-width: 550px; margin: 0 auto 2.5rem; line-height: 1.8;
            opacity: 0; animation: fadeInUp 1s ease forwards; animation-delay: 1.4s;
        }
        .hero-cta {
            display: inline-block; padding: 1rem 3rem;
            border: 1px solid var(--gold); color: var(--gold);
            text-decoration: none; font-family: 'Lora', serif;
            font-size: 0.95rem; letter-spacing: 0.15em; text-transform: uppercase;
            transition: all 0.4s; position: relative; overflow: hidden;
            opacity: 0; animation: fadeInUp 1s ease forwards; animation-delay: 1.7s;
        }
        .hero-cta::before {
            content: ''; position: absolute;
            top: 0; left: -100%; width: 100%; bottom: 0;
            background: var(--gold); transition: left 0.4s; z-index: -1;
        }
        .hero-cta:hover { color: var(--midnight); }
        .hero-cta:hover::before { left: 0; }
        .scroll-indicator {
            position: absolute; bottom: 2rem; left: 50%;
            transform: translateX(-50%); z-index: 2;
            animation: bob 2s ease-in-out infinite;
        }
        .scroll-indicator svg { width: 24px; height: 24px; stroke: var(--gold); opacity: 0.5; }
        @keyframes bob {
            0%, 100% { transform: translateX(-50%) translateY(0); }
            50% { transform: translateX(-50%) translateY(10px); }
        }

        /* ═══════════════════════════════════════ */
        /* SHARED SECTION STYLES                   */
        /* ═══════════════════════════════════════ */
        section { padding: 6rem 2rem; }
        .section-label {
            font-family: 'Lora', serif; font-size: 0.75rem;
            text-transform: uppercase; letter-spacing: 0.25em;
            color: var(--gold-dark); margin-bottom: 1rem;
        }
        .section-heading {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(2rem, 4vw, 3.2rem);
            font-weight: 300; line-height: 1.3; margin-bottom: 1.5rem;
        }
        .divider {
            display: flex; align-items: center; justify-content: center;
            gap: 1.5rem; padding: 1rem 2rem;
        }
        .divider-line { width: 80px; height: 1px; background: var(--gold); opacity: 0.4; }
        .divider-symbol { color: var(--gold); font-size: 1.2rem; opacity: 0.6; }

        /* ═══════════════════════════════════════ */
        /* PAGE 2: TEN COMMANDMENTS                */
        /* ═══════════════════════════════════════ */
        .commandments-section {
            background: linear-gradient(180deg, var(--midnight) 0%, var(--deep-blue) 40%, #2A2040 100%);
            text-align: center; position: relative; overflow: hidden;
            color: var(--text-light);
        }
        .commandments-section::before {
            content: ''; position: absolute; top: 0; left: 0; right: 0; bottom: 0;
            background:
                radial-gradient(ellipse 500px 400px at 15% 80%, rgba(201,168,76,0.06) 0%, transparent 70%),
                radial-gradient(ellipse 500px 400px at 85% 20%, rgba(201,168,76,0.06) 0%, transparent 70%);
            pointer-events: none;
        }
        .commandments-inner { max-width: 1100px; margin: 0 auto; position: relative; z-index: 1; }
        .tablets-container {
            display: grid; grid-template-columns: 1fr 1fr;
            gap: 2rem; margin: 3rem auto; max-width: 900px;
        }
        .tablet {
            background: linear-gradient(170deg, #D4C4A0 0%, #C4B48E 30%, #B8A67A 100%);
            border-radius: 20px 20px 4px 4px;
            padding: 2.5rem 2rem; position: relative;
            box-shadow: 0 8px 32px rgba(0,0,0,0.3), inset 0 1px 0 rgba(255,255,255,0.3), inset 0 -2px 4px rgba(0,0,0,0.08);
            text-align: left; color: var(--text-dark);
        }
        .tablet::before {
            content: ''; position: absolute; top: 0; left: 0; right: 0; bottom: 0;
            border-radius: 20px 20px 4px 4px;
            background: url("data:image/svg+xml,%3Csvg width='200' height='200' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='n'%3E%3CfeTurbulence baseFrequency='0.65' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='200' height='200' filter='url(%23n)' opacity='0.06'/%3E%3C/svg%3E");
            pointer-events: none;
        }
        .tablet-header {
            font-family: 'Cormorant Garamond', serif;
            font-size: 1.1rem; font-weight: 600;
            color: var(--deep-blue); letter-spacing: 0.1em;
            text-transform: uppercase; margin-bottom: 1.5rem;
            text-align: center;
            border-bottom: 1px solid rgba(26,26,62,0.15); padding-bottom: 0.75rem;
        }
        .commandment { display: flex; gap: 0.75rem; margin-bottom: 1.2rem; align-items: baseline; }
        .commandment-num {
            font-family: 'Cormorant Garamond', serif;
            font-size: 1.6rem; font-weight: 700;
            color: var(--gold-dark); flex-shrink: 0;
            line-height: 1.2; min-width: 1.5rem; text-align: right;
        }
        .commandment-text {
            font-family: 'Lora', serif;
            font-size: 0.9rem; color: var(--text-dark); line-height: 1.6;
        }
        .commandments-message {
            max-width: 700px; margin: 2rem auto 0;
            font-size: 1.1rem; line-height: 2;
            color: rgba(245,230,200,0.8);
        }

        /* ═══════════════════════════════════════ */
        /* PAGE 3: EMET TRUTH                      */
        /* ═══════════════════════════════════════ */
        .emet-section { background: var(--cream); text-align: center; }
        .emet-inner { max-width: 1000px; margin: 0 auto; }
        .emet-hero-image {
            width: 100%; max-width: 900px;
            margin: 2rem auto 3rem; border-radius: 8px; overflow: hidden;
            box-shadow: 0 20px 60px rgba(0,0,0,0.15), 0 0 0 1px rgba(201,168,76,0.15);
            position: relative;
        }
        .emet-hero-image img { width: 100%; display: block; }
        .emet-letters {
            display: flex; justify-content: center;
            gap: clamp(2rem, 6vw, 5rem); margin: 3rem 0;
            direction: rtl;
        }
        .emet-letter {
            text-align: center;
            opacity: 0; transform: translateY(40px) scale(0.9);
        }
        .emet-letter.animate {
            animation: emetReveal 0.9s cubic-bezier(0.23, 1, 0.32, 1) forwards;
        }
        .emet-letter:nth-child(1) { animation-delay: 0.1s; }
        .emet-letter:nth-child(2) { animation-delay: 0.4s; }
        .emet-letter:nth-child(3) { animation-delay: 0.7s; }
        @keyframes emetReveal {
            0% { opacity: 0; transform: translateY(40px) scale(0.9); }
            100% { opacity: 1; transform: translateY(0) scale(1); }
        }
        .emet-letter .hebrew-char {
            font-family: 'Noto Sans Hebrew', serif;
            font-size: clamp(7rem, 16vw, 12rem);
            font-weight: 700; color: var(--deep-blue);
            display: block; line-height: 1;
            text-shadow: 0 4px 20px rgba(26,26,62,0.1);
            transition: color 0.4s, text-shadow 0.4s;
        }
        .emet-letter:hover .hebrew-char {
            color: var(--gold-dark);
            text-shadow: 0 0 40px rgba(201,168,76,0.3);
        }
        .emet-letter .letter-name {
            font-family: 'Cormorant Garamond', serif;
            font-size: 1.3rem; color: var(--gold-dark);
            margin-top: 0.5rem; font-style: italic;
        }
        .emet-letter .letter-meaning { font-size: 0.9rem; color: #888; margin-top: 0.25rem; }
        .emet-letter .letter-detail { font-size: 0.8rem; color: #aaa; margin-top: 0.15rem; font-style: italic; }
        .emet-text {
            font-size: 1.15rem; line-height: 2;
            color: var(--text-dark); max-width: 700px; margin: 0 auto;
        }
        .emet-callout {
            margin: 3rem auto; max-width: 700px; padding: 2.5rem;
            background: linear-gradient(135deg, var(--deep-blue) 0%, #1E2A4A 100%);
            color: var(--warm-white); border-left: 4px solid var(--gold); text-align: left;
        }
        .emet-callout h3 {
            font-family: 'Cormorant Garamond', serif;
            font-size: 1.6rem; font-weight: 400;
            color: var(--gold-light); margin-bottom: 0.75rem;
        }
        .emet-callout p { font-size: 1rem; line-height: 1.9; color: rgba(245,230,200,0.8); }

        /* ═══════════════════════════════════════ */
        /* PILLARS                                 */
        /* ═══════════════════════════════════════ */
        .pillars-section { background: var(--deep-blue); color: var(--text-light); }
        .pillars-grid {
            display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2.5rem; max-width: 1100px; margin: 3rem auto 0;
        }
        .pillar-card {
            background: rgba(255,255,255,0.04);
            border: 1px solid rgba(201,168,76,0.15);
            padding: 2.5rem 2rem; position: relative;
            transition: border-color 0.4s, transform 0.3s;
        }
        .pillar-card:hover { border-color: rgba(201,168,76,0.4); transform: translateY(-4px); }
        .pillar-number {
            font-family: 'Cormorant Garamond', serif;
            font-size: 3rem; font-weight: 300;
            color: var(--gold); opacity: 0.3;
            position: absolute; top: 1rem; right: 1.5rem;
        }
        .pillar-title {
            font-family: 'Cormorant Garamond', serif;
            font-size: 1.5rem; font-weight: 400;
            color: var(--gold-light); margin-bottom: 1rem;
        }
        .pillar-text { font-size: 0.95rem; line-height: 1.8; color: rgba(245,230,200,0.7); }
        .pillar-verse {
            margin-top: 1.5rem; font-style: italic;
            font-size: 0.85rem; color: var(--gold); opacity: 0.6;
            border-top: 1px solid rgba(201,168,76,0.15); padding-top: 1rem;
        }

        /* ═══════════════════════════════════════ */
        /* KINGDOM                                 */
        /* ═══════════════════════════════════════ */
        .kingdom-section {
            background: linear-gradient(180deg, var(--cream) 0%, var(--parchment) 100%);
            text-align: center;
        }
        .kingdom-inner { max-width: 750px; margin: 0 auto; }
        .kingdom-quote {
            font-family: 'Cormorant Garamond', serif;
            font-size: clamp(1.6rem, 3vw, 2.4rem);
            font-weight: 300; font-style: italic;
            color: var(--deep-blue); line-height: 1.5;
            margin: 2rem 0; position: relative; padding: 0 2rem;
        }
        .kingdom-quote::before {
            content: '\201C'; font-family: 'Cormorant Garamond', serif;
            font-size: 6rem; color: var(--gold); opacity: 0.25;
            position: absolute; top: -2rem; left: -0.5rem; line-height: 1;
        }
        .kingdom-body { font-size: 1.05rem; line-height: 2; color: var(--text-dark); margin-top: 2rem; }

        /* ═══════════════════════════════════════ */
        /* COMMUNITY                               */
        /* ═══════════════════════════════════════ */
        .community-section { background: var(--warm-white); position: relative; overflow: hidden; }
        .community-section::before {
            content: ''; position: absolute; top: 0; left: 0; right: 0;
            height: 1px;
            background: linear-gradient(90deg, transparent, var(--gold), transparent); opacity: 0.3;
        }
        .community-inner { max-width: 900px; margin: 0 auto; text-align: center; }
        .testimonial-grid {
            display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem; margin: 3rem 0;
        }
        .testimonial {
            background: white; padding: 2rem;
            border-left: 3px solid var(--gold); text-align: left;
            box-shadow: 0 4px 20px rgba(0,0,0,0.04);
        }
        .testimonial p {
            font-style: italic; font-size: 0.95rem;
            line-height: 1.8; color: #555; margin-bottom: 1rem;
        }
        .testimonial cite {
            font-family: 'Cormorant Garamond', serif;
            font-style: normal; font-size: 1rem; color: var(--gold-dark);
        }

        /* ═══════════════════════════════════════ */
        /* PRAYER                                  */
        /* ═══════════════════════════════════════ */
        .prayer-section {
            background: var(--deep-blue); text-align: center;
            color: var(--text-light); position: relative;
        }
        .prayer-section::before {
            content: ''; position: absolute; top: 0; left: 0; right: 0; bottom: 0;
            background: radial-gradient(ellipse 800px 500px at 50% 50%, rgba(201,168,76,0.06) 0%, transparent 70%);
            pointer-events: none;
        }
        .prayer-inner { max-width: 600px; margin: 0 auto; position: relative; z-index: 2; }
        .prayer-section .section-heading { color: var(--warm-white); }
        .prayer-form { margin-top: 2rem; display: flex; flex-direction: column; gap: 1.2rem; }
        .prayer-form input, .prayer-form textarea {
            width: 100%; padding: 1rem 1.2rem;
            background: rgba(255,255,255,0.06);
            border: 1px solid rgba(201,168,76,0.2);
            color: var(--warm-white); font-family: 'Lora', serif;
            font-size: 0.95rem; transition: border-color 0.3s; outline: none;
        }
        .prayer-form input::placeholder, .prayer-form textarea::placeholder { color: rgba(245,230,200,0.4); }
        .prayer-form input:focus, .prayer-form textarea:focus { border-color: var(--gold); }
        .prayer-form textarea { min-height: 140px; resize: vertical; }
        .prayer-submit {
            padding: 1rem 2.5rem; background: transparent;
            border: 1px solid var(--gold); color: var(--gold);
            font-family: 'Lora', serif; font-size: 0.9rem;
            letter-spacing: 0.15em; text-transform: uppercase;
            cursor: pointer; transition: all 0.4s; align-self: center;
        }
        .prayer-submit:hover { background: var(--gold); color: var(--midnight); }
        .prayer-note { margin-top: 1.5rem; font-size: 0.85rem; color: rgba(245,230,200,0.5); font-style: italic; }

        /* ═══════════════════════════════════════ */
        /* CONTACT & FOOTER                        */
        /* ═══════════════════════════════════════ */
        .contact-bar { background: var(--midnight); text-align: center; padding: 2.5rem 2rem; }
        .contact-bar p {
            font-family: 'Cormorant Garamond', serif;
            font-size: 1.2rem; color: var(--gold-light); margin-bottom: 0.5rem;
        }
        .contact-bar a {
            color: var(--gold); text-decoration: none;
            font-size: 1.6rem; font-family: 'Cormorant Garamond', serif;
            font-weight: 600; letter-spacing: 0.05em;
        }
        .contact-bar .location {
            font-size: 0.85rem; color: rgba(245,230,200,0.4);
            margin-top: 0.75rem; font-family: 'Lora', serif;
        }
        footer {
            background: var(--midnight);
            border-top: 1px solid rgba(201,168,76,0.1);
            padding: 2rem; text-align: center;
        }
        .footer-links {
            display: flex; justify-content: center; gap: 2rem;
            margin-bottom: 1.5rem; flex-wrap: wrap;
        }
        .footer-links a {
            color: rgba(245,230,200,0.5); text-decoration: none;
            font-size: 0.85rem; letter-spacing: 0.1em;
            text-transform: uppercase; font-family: 'Lora', serif;
            transition: color 0.3s;
        }
        .footer-links a:hover { color: var(--gold); }
        .footer-copy { font-size: 0.8rem; color: rgba(245,230,200,0.3); }
        .footer-copy .heart { color: var(--rose); }

        /* ═══════════════════════════════════════ */
        /* ANIMATIONS                              */
        /* ═══════════════════════════════════════ */
        .reveal {
            opacity: 0; transform: translateY(40px);
            transition: opacity 0.8s ease, transform 0.8s ease;
        }
        .reveal.visible { opacity: 1; transform: translateY(0); }

        /* ═══════════════════════════════════════ */
        /* RESPONSIVE                              */
        /* ═══════════════════════════════════════ */
        @media (max-width: 768px) {
            nav { padding: 1rem; }
            .nav-links {
                display: none; position: fixed;
                top: 0; left: 0; right: 0; bottom: 0;
                background: rgba(13,13,38,0.98);
                flex-direction: column; align-items: center;
                justify-content: center; gap: 2.5rem;
            }
            .nav-links.open { display: flex; }
            .mobile-toggle { display: flex; z-index: 1001; }
            section { padding: 4rem 1.5rem; }
            .pillars-grid { grid-template-columns: 1fr; }
            .testimonial-grid { grid-template-columns: 1fr; }
            .tablets-container { grid-template-columns: 1fr; }
            .tablet { padding: 2rem 1.5rem; }
        }
    </style>
</head>
<body>

<!-- ═══════════════════════════════════════════ -->
<!-- NAVIGATION                                  -->
<!-- ═══════════════════════════════════════════ -->
<nav id="mainNav">
    <a href="#" class="nav-logo">I Believe In You</a>
    <ul class="nav-links" id="navLinks">
        <li><a href="#home" onclick="closeNav()">Home</a></li>
        <li><a href="#commandments" onclick="closeNav()">The Commandments</a></li>
        <li><a href="#emet" onclick="closeNav()">EMET — Truth</a></li>
        <li><a href="#pillars" onclick="closeNav()">The Way</a></li>
        <li><a href="#kingdom" onclick="closeNav()">His Kingdom</a></li>
        <li><a href="#pray" onclick="closeNav()">Let's Pray</a></li>
    </ul>
    <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
        <span></span><span></span><span></span>
    </button>
</nav>

<!-- ═══════════════════════════════════════════ -->
<!-- PAGE 1: HERO — ATTENTION GRABBER            -->
<!-- Full screen Jesus background image          -->
<!-- ═══════════════════════════════════════════ -->
<section class="hero" id="home">
    <div class="hero-bg"></div>
    <div class="hero-content">
        <div class="hero-tagline">I Believe In You</div>
        <div class="hero-hebrew-massive" aria-label="EMET in Hebrew">&#x05D0;&#x05DE;&#x05EA;</div>
        <div class="hero-emet-label">EMET &mdash; The Hebrew Word for <strong>TRUTH</strong></div>
        <h1 class="hero-title">The Truth is simple:<br><em>God loves you</em> and wants peace<br>in His Kingdom on Earth</h1>
        <p class="hero-verse">"Whoever conceals their sins does not prosper,<br>but the one who confesses them finds mercy."<br>&mdash; Proverbs 28:13</p>
        <a href="#commandments" class="hero-cta">Discover the Truth</a>
    </div>
    <div class="scroll-indicator">
        <svg viewBox="0 0 24 24" fill="none" stroke-width="2" stroke-linecap="round">
            <path d="M12 5v14M5 12l7 7 7-7"/>
        </svg>
    </div>
</section>

<!-- ═══════════════════════════════════════════ -->
<!-- PAGE 2: TEN COMMANDMENTS                    -->
<!-- ═══════════════════════════════════════════ -->
<section class="commandments-section" id="commandments">
    <div class="commandments-inner">
        <span class="section-label" style="color: var(--gold);">The Foundation of Truth</span>
        <h2 class="section-heading reveal" style="color: var(--warm-white);">The Ten Commandments</h2>
        <p class="reveal" style="max-width: 650px; margin: 0 auto 1rem; font-size: 1.05rem; color: rgba(245,230,200,0.7);">
            God gave Moses these commandments on Mount Sinai &mdash; not as chains, but as the path to freedom. They are the blueprint for heaven on earth.
        </p>

        <div class="tablets-container">
            <div class="tablet reveal">
                <div class="tablet-header">Our Duty to God</div>
                <div class="commandment">
                    <span class="commandment-num">I</span>
                    <span class="commandment-text">You shall have no other gods before Me.</span>
                </div>
                <div class="commandment">
                    <span class="commandment-num">II</span>
                    <span class="commandment-text">You shall not make for yourself an idol or worship any graven image.</span>
                </div>
                <div class="commandment">
                    <span class="commandment-num">III</span>
                    <span class="commandment-text">You shall not take the name of the LORD your God in vain.</span>
                </div>
                <div class="commandment">
                    <span class="commandment-num">IV</span>
                    <span class="commandment-text">Remember the Sabbath day, to keep it holy.</span>
                </div>
                <div class="commandment">
                    <span class="commandment-num">V</span>
                    <span class="commandment-text">Honor your father and your mother.</span>
                </div>
            </div>

            <div class="tablet reveal">
                <div class="tablet-header">Our Duty to Each Other</div>
                <div class="commandment">
                    <span class="commandment-num">VI</span>
                    <span class="commandment-text">You shall not murder.</span>
                </div>
                <div class="commandment">
                    <span class="commandment-num">VII</span>
                    <span class="commandment-text">You shall not commit adultery.</span>
                </div>
                <div class="commandment">
                    <span class="commandment-num">VIII</span>
                    <span class="commandment-text">You shall not steal.</span>
                </div>
                <div class="commandment">
                    <span class="commandment-num">IX</span>
                    <span class="commandment-text">You shall not bear false witness against your neighbor.</span>
                </div>
                <div class="commandment">
                    <span class="commandment-num">X</span>
                    <span class="commandment-text">You shall not covet anything that belongs to your neighbor.</span>
                </div>
            </div>
        </div>

        <p class="commandments-message reveal">
            <em>"If you love Me, keep My commandments."</em> &mdash; John 14:15<br><br>
            These are not rules to oppress us. They are the blueprint for peace &mdash; the same peace Jesus lived and taught. When we follow them, we build God's Kingdom right here, right now.
        </p>
    </div>
</section>

<!-- ═══════════════════════════════════════════ -->
<!-- PAGE 3: EMET — THE TRUTH                    -->
<!-- Jesus waterfall image + Hebrew letters       -->
<!-- ═══════════════════════════════════════════ -->
<section class="emet-section" id="emet">
    <div class="emet-inner">
        <span class="section-label">The Hebrew Word for Truth</span>
        <h2 class="section-heading reveal">What is &#x05D0;&#x05DE;&#x05EA; (EMET)?</h2>

        <div class="emet-hero-image reveal">
            <img src="Jesus-water.png" alt="Jesus standing in living water with EMET carved in Hebrew on the rock behind Him" loading="lazy">
        </div>

        <div class="emet-letters" id="emetLetters">
            <div class="emet-letter">
                <span class="hebrew-char">&#x05D0;</span>
                <span class="letter-name">Aleph</span>
                <span class="letter-meaning">First letter of the alphabet</span>
                <span class="letter-detail">The Beginning</span>
            </div>
            <div class="emet-letter">
                <span class="hebrew-char">&#x05DE;</span>
                <span class="letter-name">Mem</span>
                <span class="letter-meaning">Middle letter of the alphabet</span>
                <span class="letter-detail">The Journey</span>
            </div>
            <div class="emet-letter">
                <span class="hebrew-char">&#x05EA;</span>
                <span class="letter-name">Tav</span>
                <span class="letter-meaning">Last letter of the alphabet</span>
                <span class="letter-detail">The Fulfillment</span>
            </div>
        </div>

        <p class="emet-text reveal">
            EMET is composed of the first, middle, and last letters of the Hebrew alphabet &mdash; read right to left: Aleph, Mem, Tav. Truth spans <em>everything</em>, from beginning to end. It is the foundation upon which all things stand.
        </p>

        <div class="emet-callout reveal">
            <h3>Truth From Beginning to End</h3>
            <p>Remove the first letter (Aleph) from EMET and you get MET &mdash; which means <strong>"death"</strong> in Hebrew. Without God at the beginning, truth dies. EMET teaches us that God must be at the foundation of all truth. His love, His presence, His word &mdash; they hold everything together.</p>
        </div>

        <div class="divider">
            <span class="divider-line"></span>
            <span class="divider-symbol">&#10022;</span>
            <span class="divider-line"></span>
        </div>

        <p class="emet-text reveal" style="margin-top: 2rem;">
            Jesus said: <em>"You will know the truth, and the truth shall set you free."</em> &mdash; John 8:32. When we live in EMET, we are free from fear, free from shame, and free to love as God intended.
        </p>
    </div>
</section>

<!-- ═══════════════════════════════════════════ -->
<!-- PILLARS — LIVING LIKE JESUS                 -->
<!-- ═══════════════════════════════════════════ -->
<section class="pillars-section" id="pillars">
    <div style="max-width: 1100px; margin: 0 auto; text-align: center;">
        <span class="section-label" style="color: var(--gold);">Living Like Jesus</span>
        <h2 class="section-heading reveal" style="color: var(--warm-white);">The Way to Discover Heaven on Earth</h2>
        <p class="reveal" style="color: rgba(245,230,200,0.6); max-width: 600px; margin: 0 auto 1rem; font-size: 1rem;">
            Jesus showed us the path. When we treat each other as He did, heaven is not far away &mdash; it is right here, among us.
        </p>
        <div class="pillars-grid">
            <div class="pillar-card reveal">
                <span class="pillar-number">01</span>
                <h3 class="pillar-title">Love Without Condition</h3>
                <p class="pillar-text">Jesus loved the outcast, the broken, and the lost. He didn't wait for us to be worthy. True peace begins when we love others exactly as they are.</p>
                <p class="pillar-verse">"A new command I give you: Love one another." &mdash; John 13:34</p>
            </div>
            <div class="pillar-card reveal">
                <span class="pillar-number">02</span>
                <h3 class="pillar-title">Forgive and Be Free</h3>
                <p class="pillar-text">Confession and forgiveness break every chain. When we let go of anger and grudges, we make room for God's grace to fill our lives and our community.</p>
                <p class="pillar-verse">"If we confess our sins, He is faithful and just to forgive us." &mdash; 1 John 1:9</p>
            </div>
            <div class="pillar-card reveal">
                <span class="pillar-number">03</span>
                <h3 class="pillar-title">Serve One Another</h3>
                <p class="pillar-text">Jesus washed the feet of His disciples. The kingdom is built not by power but by humility, by lifting others up, by being the hands and feet of Christ in our neighborhoods.</p>
                <p class="pillar-verse">"The greatest among you shall be your servant." &mdash; Matthew 23:11</p>
            </div>
        </div>
    </div>
</section>

<!-- ═══════════════════════════════════════════ -->
<!-- KINGDOM ON EARTH                            -->
<!-- ═══════════════════════════════════════════ -->
<section class="kingdom-section" id="kingdom">
    <div class="kingdom-inner">
        <span class="section-label">Peace in His Kingdom</span>
        <h2 class="section-heading reveal">Heaven Discovered on Earth</h2>
        <blockquote class="kingdom-quote reveal">
            Your kingdom come, Your will be done, on earth as it is in heaven.
        </blockquote>
        <p style="font-style: italic; color: var(--gold-dark); font-size: 0.9rem;">&mdash; Matthew 6:10</p>
        <p class="kingdom-body reveal">
            God's kingdom is not a distant place beyond the clouds. It is here, now, in every act of kindness, in every word of truth, in every moment we choose love over hate. When a community believes together &mdash; when neighbors pray for one another, when strangers become family &mdash; heaven breaks through. That is the promise of EMET. That is what Jesus lived and died for: peace, love, and truth dwelling among us.
        </p>
        <div class="divider" style="margin-top: 3rem;">
            <span class="divider-line"></span>
            <span class="divider-symbol">&#x1F54A;</span>
            <span class="divider-line"></span>
        </div>
    </div>
</section>

<!-- ═══════════════════════════════════════════ -->
<!-- COMMUNITY                                   -->
<!-- ═══════════════════════════════════════════ -->
<section class="community-section">
    <div class="community-inner">
        <span class="section-label">Our Community</span>
        <h2 class="section-heading reveal">Voices of Belief</h2>
        <div class="testimonial-grid">
            <div class="testimonial reveal">
                <p>"I came broken, carrying years of guilt. Through prayer and this community, I found the courage to confess and the grace to start again."</p>
                <cite>&mdash; A grateful believer</cite>
            </div>
            <div class="testimonial reveal">
                <p>"EMET isn't just a word to me anymore. It's how I try to live &mdash; truthfully, lovingly, and in service to my neighbors."</p>
                <cite>&mdash; A member of the community</cite>
            </div>
            <div class="testimonial reveal">
                <p>"When I stopped hiding and started believing, everything changed. God's love is real, and it's here for all of us."</p>
                <cite>&mdash; A new believer</cite>
            </div>
        </div>
    </div>
</section>

<!-- ═══════════════════════════════════════════ -->
<!-- PRAYER                                      -->
<!-- ═══════════════════════════════════════════ -->
<section class="prayer-section" id="pray">
    <div class="prayer-inner">
        <span class="section-label" style="color: var(--gold);">Let's Pray Together &#x1F64F;</span>
        <h2 class="section-heading reveal">Confess Now to Be Set Free</h2>
        <p class="reveal" style="color: rgba(245,230,200,0.6); font-size: 1rem; margin-bottom: 1rem;">
            Leave your worries below. Whatever is on your heart, bring it before God. He is faithful, He is just, and He loves you.
        </p>
        <div class="prayer-form reveal">
            <input type="text" placeholder="Your Name" aria-label="Your name">
            <input type="email" placeholder="Your Email" aria-label="Your email">
            <textarea placeholder="Share your prayer, your confession, or simply what's on your heart..." aria-label="Your prayer"></textarea>
            <button class="prayer-submit" type="button" onclick="submitPrayer()">Send Your Prayer</button>
        </div>
        <p class="prayer-note">Your words are sacred. We pray with you, not just for you.</p>
    </div>
</section>

<!-- ═══════════════════════════════════════════ -->
<!-- CONTACT                                     -->
<!-- ═══════════════════════════════════════════ -->
<div class="contact-bar">
    <p>Heavens Urgent Care</p>
    <a href="tel:18004282022">1-800-428-2022</a>
    <p class="location">South Idaho Road, Apache Junction, AZ</p>
</div>

<!-- ═══════════════════════════════════════════ -->
<!-- FOOTER                                      -->
<!-- ═══════════════════════════════════════════ -->
<footer>
    <div class="footer-links">
        <a href="#home">Home</a>
        <a href="#commandments">Commandments</a>
        <a href="#emet">EMET</a>
        <a href="#pillars">The Way</a>
        <a href="#kingdom">His Kingdom</a>
        <a href="#pray">Pray</a>
    </div>
    <p class="footer-copy">
        &copy; 2026 I Believe In You &mdash; All Rights Reserved.<br>
        We are here to answer prayers, not just pray. The power of God and the grace of Jesus is within all of our hearts. <span class="heart">&hearts;</span>
    </p>
</footer>

<script>
    // Nav scroll effect
    window.addEventListener('scroll', () => {
        document.getElementById('mainNav').classList.toggle('scrolled', window.scrollY > 60);
    });

    // Mobile menu
    const toggle = document.getElementById('mobileToggle');
    const navLinks = document.getElementById('navLinks');
    toggle.addEventListener('click', () => navLinks.classList.toggle('open'));
    function closeNav() { navLinks.classList.remove('open'); }

    // Scroll reveal
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(e => { if (e.isIntersecting) e.target.classList.add('visible'); });
    }, { threshold: 0.15 });
    document.querySelectorAll('.reveal').forEach(el => observer.observe(el));

    // EMET letters animation
    const emetObs = new IntersectionObserver((entries) => {
        entries.forEach(e => {
            if (e.isIntersecting) {
                document.querySelectorAll('.emet-letter').forEach(l => l.classList.add('animate'));
            }
        });
    }, { threshold: 0.3 });
    emetObs.observe(document.getElementById('emetLetters'));

    // Prayer submit
    function submitPrayer() {
        const btn = document.querySelector('.prayer-submit');
        btn.textContent = 'Amen \u{1F64F} Prayer Received';
        btn.style.background = 'var(--gold)';
        btn.style.color = 'var(--midnight)';
        btn.style.pointerEvents = 'none';
    }
</script>

</body>
</html>
