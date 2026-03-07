<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="dark" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Spotfix - Civic Portal Sign Up</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Spline+Sans:wght@300;400;500;600;700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
	rel="stylesheet" />
<script id="tailwind-config">
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					primary : "#FAC638",
					secondary : "#F97316",
					"brand-gray" : "#2E3137",
					"form-bg" : "#FFFFFF"
				},
				fontFamily : {
					display : "Spline Sans"
				},
				borderRadius : {
					DEFAULT : "1rem",
					lg : "2rem",
					xl : "3rem",
					full : "9999px"
				}
			}
		}
	};
</script>
<style type="text/tailwindcss">
        body {
            font-family: "Spline Sans", sans-serif;
            background-color: #2E3137;
        }
        .material-symbols-outlined {
            font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
        }
        .civic-gradient {
            background: linear-gradient(135deg, rgba(46, 49, 55, 0.9) 0%, rgba(46, 49, 55, 0.4) 100%);
        }
        .image-overlay {
            background: linear-gradient(to right, #2E3137 0%, transparent 20%, transparent 80%, #2E3137 100%);
        }.no-scrollbar::-webkit-scrollbar {
            display: none;
        }
        .no-scrollbar {
            -ms-overflow-style: none;
            scrollbar-width: none;
        }
    </style>
</head>
<body class="text-white min-h-screen font-display overflow-hidden">
	<div class="flex h-screen w-full">
		<div
			class="hidden lg:flex flex-1 relative bg-[#2E3137] overflow-hidden">
			<img alt="Smart City Skyline"
				class="absolute inset-0 w-full h-full object-cover opacity-50 grayscale hover:grayscale-0 transition-all duration-700"
				src="https://lh3.googleusercontent.com/aida-public/AB6AXuAYFfRdzttKTIzPjjMtuDgPsbO98RacXy3aa7MsdxVlihoVsJtDv21X-z0u9ZhOSD3kdziTRFhOFz9atPPnt21EYe9r_zbhC6KUsfVrVGlWPZZ2YO36XPdv5wqwkGK2vYVIk6-9iExTXZuxTJjDbr5iD6VCTcd0cYre-Z3j9LFCH528iuVld_f1IC2oBIVgdu6jh2F7YZN6WOnczKv3EiHV7B9__505Hp-4I3nf03GaYimIY3jfKeF0KQiunyXtOPkZFc3kHTLJiyE" />
			<div class="absolute inset-0 image-overlay"></div>
			<div
				class="absolute inset-0 bg-gradient-to-t from-[#2E3137] via-transparent to-[#2E3137]/50"></div>
			<div class="relative z-10 w-full flex flex-col justify-center px-16">
				<div class="max-w-md">
					<div class="w-16 h-1 bg-primary mb-6"></div>
					<h2 class="text-5xl font-bold leading-tight mb-4">
						Empowering <br /> <span class="text-primary">Civic
							Collaboration</span>
					</h2>
					<p class="text-gray-300 text-lg">Connecting citizens with local
						governance to build smarter, cleaner, and more efficient urban
						spaces.</p>
					<div class="mt-12 grid grid-cols-2 gap-6">
						<div class="flex items-center gap-3">
							<span class="material-symbols-outlined text-primary">location_city</span>
							<span class="text-sm font-medium text-gray-200">Urban
								Planning</span>
						</div>
						<div class="flex items-center gap-3">
							<span class="material-symbols-outlined text-primary">groups</span>
							<span class="text-sm font-medium text-gray-200">Citizen
								Feedback</span>
						</div>
						<div class="flex items-center gap-3">
							<span class="material-symbols-outlined text-primary">speed</span>
							<span class="text-sm font-medium text-gray-200">Rapid
								Response</span>
						</div>
						<div class="flex items-center gap-3">
							<span class="material-symbols-outlined text-primary">verified</span>
							<span class="text-sm font-medium text-gray-200">Verified
								Portals</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<main
			class="flex-1 flex flex-col justify-center items-center px-6 lg:px-12 bg-[#2E3137]">
			<div
				class="w-full max-w-[460px] h-full flex flex-col justify-center py-4">
				<div class="mb-4 text-center lg:text-left">
					<h1 class="text-white text-3xl font-bold tracking-tight">Spotfix
						Civic Portal</h1>
					<p class="text-gray-400 mt-1 text-sm">Join the community and
						improve your district</p>
				</div>
				<form class="flex flex-col gap-3 overflow-y-auto no-scrollbar pr-1">
					<div class="grid grid-cols-2 gap-3">
						<div class="flex flex-col w-full">
							<label class="text-white text-xs font-medium mb-1.5 ml-1">Full
								Name</label>
							<div class="relative flex items-center">
								<span
									class="material-symbols-outlined absolute left-4 text-gray-400 text-sm">person</span>
								<input
									class="w-full rounded-full bg-white text-gray-900 border-none h-11 pl-11 pr-4 text-sm font-normal focus:ring-2 focus:ring-primary placeholder:text-gray-400 shadow-sm"
									placeholder="John Doe" required="" type="text" />
							</div>
						</div>
						<div class="flex flex-col w-full">
							<label class="text-white text-xs font-medium mb-1.5 ml-1">Email
								Address</label>
							<div class="relative flex items-center">
								<span
									class="material-symbols-outlined absolute left-4 text-gray-400 text-sm">mail</span>
								<input
									class="w-full rounded-full bg-white text-gray-900 border-none h-11 pl-11 pr-4 text-sm font-normal focus:ring-2 focus:ring-primary placeholder:text-gray-400 shadow-sm"
									placeholder="name@email.com" required="" type="email" />
							</div>
						</div>
					</div>
					<div class="flex flex-col w-full">
						<label class="text-white text-xs font-medium mb-1.5 ml-1">Phone
							Number</label>
						<div class="relative flex items-center">
							<span
								class="material-symbols-outlined absolute left-4 text-gray-400 text-sm">call</span>
							<input
								class="w-full rounded-full bg-white text-gray-900 border-none h-11 pl-11 pr-4 text-sm font-normal focus:ring-2 focus:ring-primary placeholder:text-gray-400 shadow-sm"
								placeholder="+91 00000 00000" required="" type="tel" />
						</div>
					</div>
					<div class="flex flex-col w-full">
						<label class="text-white text-xs font-medium mb-1.5 ml-1">Street
							Location / Address</label>
						<div class="relative flex items-center">
							<span
								class="material-symbols-outlined absolute left-4 text-gray-400 text-sm">location_on</span>
							<input
								class="w-full rounded-full bg-white text-gray-900 border-none h-11 pl-11 pr-4 text-sm font-normal focus:ring-2 focus:ring-primary placeholder:text-gray-400 shadow-sm"
								placeholder="Area, Landmark or Street" required="" type="text" />
						</div>
					</div>
					<div class="grid grid-cols-2 gap-3">
						<div class="flex flex-col w-full">
							<label class="text-white text-xs font-medium mb-1.5 ml-1">District</label>
							<div class="relative flex items-center">
								<span
									class="material-symbols-outlined absolute left-4 text-gray-400 text-sm">apartment</span>
								<select
									class="w-full rounded-full bg-white text-gray-900 border-none h-11 pl-11 pr-8 text-sm font-normal focus:ring-2 focus:ring-primary appearance-none shadow-sm cursor-pointer"
									required="">
									<option disabled="" selected="" value="">Select
										District</option>
									<option value="central">Central District</option>
									<option value="north">North District</option>
									<option value="south">South District</option>
									<option value="east">East District</option>
									<option value="west">West District</option>
								</select> <span
									class="material-symbols-outlined absolute right-4 text-gray-400 pointer-events-none text-sm">expand_more</span>
							</div>
						</div>
						<div class="flex flex-col w-full">
							<label class="text-white text-xs font-medium mb-1.5 ml-1">Pincode</label>
							<div class="relative flex items-center">
								<span
									class="material-symbols-outlined absolute left-4 text-gray-400 text-sm">pin_drop</span>
								<input
									class="w-full rounded-full bg-white text-gray-900 border-none h-11 pl-11 pr-4 text-sm font-normal focus:ring-2 focus:ring-primary placeholder:text-gray-400 shadow-sm"
									placeholder="400001" required="" type="number" />
							</div>
						</div>
					</div>
					<div class="grid grid-cols-2 gap-3">
						<div class="flex flex-col w-full">
							<label class="text-white text-xs font-medium mb-1.5 ml-1">Password</label>
							<div class="relative flex items-center">
								<span
									class="material-symbols-outlined absolute left-4 text-gray-400 text-sm">lock</span>
								<input
									class="w-full rounded-full bg-white text-gray-900 border-none h-11 pl-11 pr-10 text-sm font-normal focus:ring-2 focus:ring-primary placeholder:text-gray-400 shadow-sm"
									placeholder="••••••••" required="" type="password" />
								<button
									class="absolute right-4 text-gray-400 hover:text-gray-600 transition-colors"
									type="button">
									<span class="material-symbols-outlined text-sm">visibility</span>
								</button>
							</div>
						</div>
						<div class="flex flex-col w-full">
							<label class="text-white text-xs font-medium mb-1.5 ml-1">Confirm
								Password</label>
							<div class="relative flex items-center">
								<span
									class="material-symbols-outlined absolute left-4 text-gray-400 text-sm">lock_reset</span>
								<input
									class="w-full rounded-full bg-white text-gray-900 border-none h-11 pl-11 pr-4 text-sm font-normal focus:ring-2 focus:ring-primary placeholder:text-gray-400 shadow-sm"
									placeholder="••••••••" required="" type="password" />
							</div>
						</div>
					</div>
					<div class="mt-2">
						<button
							class="flex w-full cursor-pointer items-center justify-center overflow-hidden rounded-full h-11 px-4 bg-primary text-[#2E3137] text-base font-bold hover:brightness-110 transition-all shadow-xl shadow-primary/10"
							type="submit">
							<span>Sign Up</span>
						</button>
					</div>
					<p class="text-gray-400 text-[10px] text-center px-4 mt-1">
						By signing up, you agree to our <a
							class="text-primary hover:underline" href="#">Terms</a> and <a
							class="text-primary hover:underline" href="#">Privacy Policy</a>
					</p>
					<div
						class="flex items-center justify-center gap-2 mt-4 pt-4 border-t border-white/10">
						<span class="text-gray-300 text-sm">Already have an
							account?</span> <a
							class="text-primary text-sm font-bold hover:underline" href="#">Log
							In</a>
					</div>
				</form>
			</div>
		</main>
	</div>

</body>
</html>