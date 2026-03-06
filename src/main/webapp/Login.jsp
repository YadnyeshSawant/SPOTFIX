<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="dark" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Spotfix Login</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,typography,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
	rel="stylesheet" />
<script>
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					primary : "#F79F1A",
					"charcoal" : "#2E3137",
					"charcoal-dark" : "#25282D",
				},
				fontFamily : {
					display : [ "Plus Jakarta Sans", "sans-serif" ],
				},
			},
		},
	};
</script>
<style type="text/tailwindcss">
        :root {
            --primary-glow: rgba(247, 159, 26, 0.35);
        }
        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: #2E3137;
            overflow: hidden;
        }
        .pill-input {
            @apply w-full bg-white rounded-full py-4 px-6 flex items-center border border-gray-100 shadow-[0_2px_10px_-3px_rgba(0,0,0,0.07)] transition-all duration-300 focus-within:ring-2 focus-within:ring-primary/40 focus-within:border-primary/20;
        }
        .pill-input input {
            @apply border-none focus:ring-0 bg-transparent text-slate-800 placeholder-slate-400 w-full text-base ml-3 font-medium;
        }
        .primary-button {
            background: linear-gradient(to bottom, #ffb342, #F79F1A);
            box-shadow: 0 4px 15px -3px var(--primary-glow), 0 10px 20px -5px rgba(0,0,0,0.2);
            @apply w-full text-white font-bold text-lg py-4 rounded-full transition-all duration-300 transform hover:scale-[1.01] active:scale-[0.98] hover:brightness-105;
        }
        .organic-wave {
            fill: #272a2f;
        }
        .user-card-inner-shadow {
            box-shadow: inset 0 2px 4px 0 rgba(0, 0, 0, 0.05);
        }
    </style>
</head>
<body
	class="min-h-screen flex items-center justify-center relative overflow-hidden bg-charcoal">
	<div
		class="fixed bottom-0 left-0 w-full h-[40vh] pointer-events-none z-0">
		<svg class="w-full h-full" preserveAspectRatio="none"
			viewBox="0 0 1440 320" xmlns="http://www.w3.org/2000/svg">
<path class="organic-wave"
				d="M0,160L80,176C160,192,320,224,480,213.3C640,203,800,149,960,144C1120,139,1280,181,1360,202.7L1440,224L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z"></path>
</svg>
	</div>
	<main
		class="relative z-10 w-full max-w-md px-6 flex flex-col items-center">
		<h1
			class="text-4xl font-extrabold text-white mb-10 tracking-tight text-center drop-shadow-sm">
			Spotfix <span class="font-bold opacity-90">Login</span>
		</h1>
		<div
			class="w-64 aspect-square bg-[#f8fafc] rounded-3xl mb-12 shadow-[0_20px_50px_rgba(0,0,0,0.3)] flex flex-col p-5 relative user-card-inner-shadow">
			<div class="flex gap-2 mb-8">
				<div class="w-2.5 h-2.5 rounded-full bg-slate-300/80"></div>
				<div class="w-2.5 h-2.5 rounded-full bg-slate-300/80"></div>
				<div class="w-2.5 h-2.5 rounded-full bg-slate-300/80"></div>
			</div>
			<div
				class="flex flex-col items-center flex-grow justify-center gap-5">
				<div class="relative">
					<div
						class="w-24 h-24 rounded-full bg-slate-200 flex items-center justify-center shadow-inner">
						<span
							class="material-symbols-outlined text-slate-400 text-6xl select-none"
							style="font-variation-settings: 'FILL' 1, 'wght' 300;">account_circle</span>
					</div>
					<div
						class="absolute bottom-1 right-1 w-6 h-6 bg-emerald-400 border-4 border-[#f8fafc] rounded-full"></div>
				</div>
				<div class="space-y-2 w-full flex flex-col items-center">
					<div class="w-36 h-3.5 bg-slate-200 rounded-full"></div>
					<div class="w-24 h-3 bg-slate-100 rounded-full"></div>
				</div>
				<div
					class="w-28 h-8 bg-slate-200/50 rounded-lg mt-2 border border-slate-200/50"></div>
			</div>
		</div>
		<form action="LoginHandler" method="post">
			<div class="w-full space-y-5">
				<div class="pill-input">
					<span class="material-symbols-outlined text-slate-400 text-xl"
						style="font-variation-settings: 'wght' 300;">mail</span> <input name="uname"
						placeholder="Email address" type="email"
						value="john.doe@example.com" />
				</div>
				<div class="pill-input">
					<span class="material-symbols-outlined text-slate-400 text-xl"
						style="font-variation-settings: 'wght' 300;">lock</span> <input name="upass"
						placeholder="Password" type="password" value="password123" />
					<button class="ml-2 flex items-center" type="button">
						<span
							class="material-symbols-outlined text-slate-400 text-xl hover:text-slate-600 transition-colors">visibility</span>
					</button>
				</div>
				<button type = "submit" class="primary-button mt-6">Log in Now</button>
			</div>
		</form>
		<div class="mt-10 text-center">
			<p class="text-slate-300 font-medium text-sm tracking-wide">
				Not a user? <a
					class="text-primary hover:text-[#ffb342] transition-colors font-bold ml-1.5"
					href="#">Sign Up</a>
			</p>
		</div>
	</main>

</body>
</html>