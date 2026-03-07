<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="dark" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Web App Welcome & Authentication</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,typography,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=swap"
	rel="stylesheet" />
<script>
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					primary : "#F79F1A",
					"background-light" : "#FFFFFF",
					"background-dark" : "#2E3137",
				},
				fontFamily : {
					display : [ "Plus Jakarta Sans", "sans-serif" ],
				},
				borderRadius : {
					DEFAULT : "0.75rem",
					'button' : "3rem",
				},
			},
		},
	};

	function toggleDarkMode() {
		document.documentElement.classList.toggle('dark');
	}
</script>
<style type="text/tailwindcss">
        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
        }
        .organic-shape {
            border-radius: 40% 60% 70% 30% / 40% 50% 60% 50%;
        }
    </style>
</head>
<body
	class="bg-background-light dark:bg-background-dark transition-colors duration-300 min-h-screen flex items-center justify-center p-4">

	<main
		class="w-full max-w-6xl flex flex-col md:flex-row bg-white dark:bg-[#3d4148] rounded-3xl overflow-hidden shadow-2xl min-h-[700px]">
		<div
			class="w-full md:w-3/5 relative bg-gradient-to-br from-[#FFB84C] via-[#F79F1A] to-[#E67E22] overflow-hidden flex flex-col items-center justify-center p-8 md:p-12">
			<div
				class="absolute top-[-10%] left-[-10%] w-[50%] h-[50%] bg-white/10 rounded-full blur-3xl"></div>
			<div
				class="absolute bottom-[-5%] right-[-5%] w-[60%] h-[60%] bg-orange-600/20 organic-shape blur-2xl"></div>
			<div class="relative z-10 w-full max-w-md">
				<div class="flex flex-col items-center">
					<div
						class="relative w-full aspect-square flex items-center justify-center">
						<div
							class="absolute top-10 left-10 w-24 h-28 bg-white/20 backdrop-blur-md rounded-b-full rounded-t-lg flex items-center justify-center border border-white/30 shadow-lg">
							<span
								class="material-symbols-outlined text-white text-5xl opacity-80">verified_user</span>
						</div>
						<img alt="Person working securely on a laptop"
							class="w-full h-full object-cover rounded-3xl mix-blend-overlay opacity-40 absolute"
							src="https://lh3.googleusercontent.com/aida-public/AB6AXuCPh93odbr00PY0swUj2kekf-4Ki_QZzp2mg_0dUZY04itjqebeTTolSEDCAg6W0-pYDiitcjllzDbTQ8kPvBDyC7iRueSeXr61ApJZZyAo4Zcp5PBfA8dNkgkROCRwkcDxpNOdyJr8wn0AHMmJWO9uIW_Gz6-6a-oF-8q-D3bLKz_r2rhCJenfU5klL5tNFjOoOGD_PcwJs0TN4DdYzcsktNU9J_vCeqaa2x1_tKfeY_nC52YJ6AwXiXm6IwOBiHeCx72gAqzoSH0" />
						<div class="relative z-20 w-full flex flex-col gap-6 items-center">
							<div
								class="bg-white/90 dark:bg-slate-900/90 backdrop-blur-sm p-6 rounded-2xl shadow-xl border border-white/40 w-64 transform -rotate-3 hover:rotate-0 transition-transform duration-500">
								<div class="flex flex-col items-center gap-3">
									<div
										class="w-12 h-12 bg-yellow-400 rounded-lg flex items-center justify-center shadow-inner">
										<span class="material-symbols-outlined text-white">lock</span>
									</div>
									<div
										class="w-full h-4 bg-slate-200 dark:bg-slate-700 rounded-full"></div>
									<div
										class="w-3/4 h-4 bg-slate-200 dark:bg-slate-700 rounded-full"></div>
								</div>
							</div>
							<div
								class="bg-white/90 dark:bg-slate-900/90 backdrop-blur-sm p-4 rounded-xl shadow-xl border border-white/40 w-56 self-end transform rotate-3 hover:rotate-0 transition-transform duration-500 -mt-8 mr-4">
								<p
									class="text-[10px] font-bold text-slate-400 uppercase tracking-widest text-center mb-3">Enter
									Code</p>
								<div class="flex gap-2 justify-center">
									<div
										class="w-8 h-10 bg-yellow-100 dark:bg-yellow-900/30 rounded border border-yellow-200 dark:border-yellow-700/50 flex items-center justify-center font-bold text-yellow-600">6</div>
									<div
										class="w-8 h-10 bg-yellow-100 dark:bg-yellow-900/30 rounded border border-yellow-200 dark:border-yellow-700/50 flex items-center justify-center font-bold text-yellow-600">4</div>
									<div
										class="w-8 h-10 bg-yellow-100 dark:bg-yellow-900/30 rounded border border-yellow-200 dark:border-yellow-700/50 flex items-center justify-center font-bold text-yellow-600">3</div>
									<div
										class="w-8 h-10 bg-slate-100 dark:bg-slate-800 rounded border border-slate-200 dark:border-slate-700 flex items-center justify-center">_</div>
								</div>
							</div>
						</div>
					</div>
					<div class="mt-8 text-center text-white">
						<h1 class="text-4xl font-extrabold mb-4">Secure & Simple</h1>
						<p class="text-orange-50/80 max-w-xs mx-auto leading-relaxed">
							Experience the next generation of secure web applications with
							our intuitive interface.</p>
					</div>
				</div>
			</div>
		</div>
		<div
			class="w-full md:w-2/5 p-8 md:p-16 flex flex-col justify-center items-center text-center">
			<div class="w-full max-w-sm">
				<div class="mb-12">
					<div
						class="w-16 h-16 bg-primary/10 rounded-2xl flex items-center justify-center mx-auto mb-6">
						<span class="material-symbols-outlined text-primary text-4xl">shield_person</span>
					</div>
					<h2 class="text-2xl font-bold text-slate-800 dark:text-white mb-2">Welcome
						Back</h2>
					<p class="text-slate-500 dark:text-slate-400">Please choose an
						option to continue</p>
				</div>

				<div class="space-y-6">
					<a href="Login.jsp"
						class="w-full py-5 px-8 bg-white dark:bg-[#2E3137] text-slate-900 dark:text-white font-bold text-lg rounded-button shadow-lg hover:shadow-xl hover:-translate-y-0.5 transition-all border border-slate-100 dark:border-slate-700 flex items-center justify-center group">
						Log In <span
						class="material-symbols-outlined ml-2 transition-transform group-hover:translate-x-1">login</span>
					</a> <a href="SignUp.jsp"
						class="w-full py-5 px-8 bg-primary text-white font-bold text-lg rounded-button shadow-[0_10px_30px_-10px_rgba(247,159,26,0.5)] hover:bg-[#e68d00] hover:-translate-y-0.5 transition-all flex items-center justify-center group">
						Sign Up <span
						class="material-symbols-outlined ml-2 transition-transform group-hover:translate-x-1">person_add</span>
					</a>
				</div>
				
				<div class="mt-12">
					<p class="text-xs text-slate-400 dark:text-slate-500">
						By continuing, you agree to our <a
							class="underline decoration-slate-300 dark:decoration-slate-600 hover:text-primary transition-colors"
							href="#">Terms</a> and <a
							class="underline decoration-slate-300 dark:decoration-slate-600 hover:text-primary transition-colors"
							href="#">Privacy Policy</a>
					</p>
				</div>
			</div>
		</div>
	</main>
	<div
		class="fixed bottom-0 left-0 w-full h-24 pointer-events-none overflow-hidden opacity-30 dark:opacity-10">
		<svg class="w-full h-full" preserveAspectRatio="none"
			viewBox="0 0 1440 320">
<path
				d="M0,192L48,197.3C96,203,192,213,288,192C384,171,480,117,576,112C672,107,768,149,864,160C960,171,1056,149,1152,122.7C1248,96,1344,64,1392,48L1440,32L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"
				fill="#F79F1A"></path>
</svg>
	</div>

</body>
</html>