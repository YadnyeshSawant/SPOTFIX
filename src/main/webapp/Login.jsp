<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="dark" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Spotfix | Corporate Portal</title>
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
					/* UPDATED: Primary changed to the yellow from your image */
					primary : "#F79F1A",
					"charcoal-dark" : "#1E2127",
					"charcoal-muted" : "#2A2E35",
				},
				fontFamily : {
					display : [ "Plus Jakarta Sans", "sans-serif" ],
				},
			},
		},
	};
</script>
<style type="text/tailwindcss">
        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: #1E2127;
        }
        .overlay-gradient {
            background: linear-gradient(135deg, rgba(30, 33, 39, 0.85) 0%, rgba(30, 33, 39, 0.4) 100%);
        }
        .tech-pattern {
            /* UPDATED: Pattern opacity color adjusted for yellow */
            background-image: radial-gradient(circle at 2px 2px, rgba(247, 159, 26, 0.15) 1px, transparent 0);
            background-size: 24px 24px;
        }
    </style>
</head>
<body class="h-screen w-full overflow-hidden flex font-display">
	<div class="hidden lg:flex lg:w-1/2 relative h-full">
		<img alt="Modern Architecture"
			class="absolute inset-0 w-full h-full object-cover"
			src="https://lh3.googleusercontent.com/aida-public/AB6AXuApWSL8PYAvncV0ubnVGLlkf5HilU5NFNJ1W-Tdvv6syQH6nIki68zHRFArC3EujZXu04xaJeU4tyIunB94MMMC7xkmlX_s1ksySPiAn-2y-G_0wqPHkArv9gZe9HVNRmURuz2loEA_G_1N-cUW-HdX5W8SqufJvLhSjddyITSl576_eABGw_DEnKRrjb_p2qb-myLXVyTMA9kqwstaqTYIo156fCaasQsHwdudfW4JIc-BlqarcRBi49MDMyHnZ1xGoytJ2c1A71Q" />
		<div class="absolute inset-0 overlay-gradient"></div>
		<div class="absolute inset-0 tech-pattern"></div>
		<div class="relative z-10 flex flex-col justify-between h-full p-16">
			<div class="flex items-center gap-3">
				<div
					class="w-10 h-10 bg-primary rounded-lg flex items-center justify-center">
					<span class="material-symbols-outlined text-white text-2xl">location_searching</span>
				</div>
				<span class="text-white text-2xl font-extrabold tracking-tight">Spotfix</span>
			</div>
			<div class="max-w-xl">
				<h1 class="text-5xl font-extrabold text-white leading-tight mb-6">
					Bridging the Gap Between <span class="text-primary">Citizens</span>
					and <span class="text-primary">Government</span>
				</h1>
				<p class="text-slate-300 text-lg leading-relaxed max-w-md">
					Empowering civic authorities with intelligent data to streamline
					infrastructure management and foster transparent communication.</p>
			</div>
			<div class="text-slate-400 text-sm">© 2024 Spotfix Civic
				Technologies Inc. All rights reserved.</div>
		</div>
	</div>
	<main
		class="w-full lg:w-1/2 bg-charcoal-dark flex items-center justify-center p-8 lg:p-24 h-full">
		<div class="w-full max-w-md">
			<div class="mb-10">
				<div class="lg:hidden flex items-center gap-3 mb-8">
					<div
						class="w-8 h-8 bg-primary rounded-lg flex items-center justify-center">
						<span class="material-symbols-outlined text-white text-xl">location_searching</span>
					</div>
					<span class="text-white text-xl font-extrabold">Spotfix</span>
				</div>
				<h2 class="text-4xl font-extrabold text-white mb-3">Welcome
					Back</h2>
				<p class="text-slate-400">Please enter your credentials to
					access the portal.</p>
			</div>
			<form  action="LoginHandler" class="space-y-6" method="post">
				<div>
					<label class="block text-sm font-semibold text-slate-300 mb-2">Email
						Address</label>
					<div class="relative group">
						<div
							class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none transition-colors duration-200 group-focus-within:text-primary text-slate-500">
							<span class="material-symbols-outlined text-xl">alternate_email</span>
						</div>
						<input name="uname"
							class="block w-full pl-12 pr-4 py-3.5 bg-charcoal-muted border border-slate-700/50 rounded-xl text-white placeholder-slate-500 focus:ring-2 focus:ring-primary/20 focus:border-primary transition-all outline-none"
							placeholder="name@organization.gov" required="" type="email" />
					</div>
				</div>
				<div>
					<div class="flex justify-between mb-2">
						<label class="block text-sm font-semibold text-slate-300">Password</label>
						<a
							class="text-sm font-medium text-primary hover:text-yellow-400 transition-colors"
							href="#">Forgot password?</a>
					</div>
					<div class="relative group">
						<div
							class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none transition-colors duration-200 group-focus-within:text-primary text-slate-500">
							<span class="material-symbols-outlined text-xl">lock</span>
						</div>
						<input name="upass"
							class="block w-full pl-12 pr-12 py-3.5 bg-charcoal-muted border border-slate-700/50 rounded-xl text-white placeholder-slate-500 focus:ring-2 focus:ring-primary/20 focus:border-primary transition-all outline-none"
							placeholder="••••••••" required="" type="password" />
						<button
							class="absolute inset-y-0 right-0 pr-4 flex items-center text-slate-500 hover:text-slate-300"
							type="button">
							<span class="material-symbols-outlined text-xl">visibility</span>
						</button>
					</div>
				</div>
				
				<button
					class="w-full bg-primary hover:bg-[#E68D00] text-white font-bold py-4 rounded-xl shadow-lg shadow-primary/20 transition-all active:scale-[0.98] flex items-center justify-center gap-2 group"
					type="submit">
					Log In <span
						class="material-symbols-outlined text-xl group-hover:translate-x-1 transition-transform">arrow_forward</span>
				</button>
			</form>
			<div class="mt-10 text-center">
				<p class="text-slate-400">
					Not a user yet? <a
						class="text-primary font-bold hover:underline underline-offset-4 ml-1"
						href="SignUp.jsp">Sign Up</a>
				</p>
			</div>
			<div
				class="mt-12 pt-8 border-t border-slate-700/50 flex flex-wrap justify-center gap-6 text-xs text-slate-500 font-medium">
				<a class="hover:text-slate-300 transition-colors" href="#">Support
					Center</a> <a class="hover:text-slate-300 transition-colors" href="#">Privacy
					Policy</a> <a class="hover:text-slate-300 transition-colors" href="#">Terms
					of Service</a>
			</div>
		</div>
	</main>
</body>
</html>