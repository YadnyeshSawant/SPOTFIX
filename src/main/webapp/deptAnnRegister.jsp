<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.UserBean"%>
<%
UserBean user = (UserBean) session.getAttribute("user");
if (user == null) {
	response.sendRedirect("Login.jsp");
	return;
}
%>

<!DOCTYPE html>
<html class="dark" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Create New Announcement - Spotfix Portal</title>
<script src="https://cdn.tailwindcss.com?plugins=forms,typography,container-queries"></script>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=swap" rel="stylesheet" />
<script>
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					primary : "#F29D11",
					"background-dark" : "#121417",
					"card-dark" : "#1E2127",
					"accent-purple" : "#7C63F3"
				},
				fontFamily : {
					display : [ "Inter", "sans-serif" ],
				},
				borderRadius : {
					DEFAULT : "12px",
				},
			},
		},
	};
</script>
<style type="text/tailwindcss">
        body {
            font-family: 'Inter', sans-serif;
            background-color: #121417;
        }
        .custom-scrollbar::-webkit-scrollbar {
            width: 6px;
        }
        .custom-scrollbar::-webkit-scrollbar-track {
            background: transparent;
        }
        .custom-scrollbar::-webkit-scrollbar-thumb {
            background: #374151;
            border-radius: 10px;
        }
    </style>
</head>
<body class="dark bg-background-dark text-slate-100 h-screen flex overflow-hidden">
	
	<aside class="w-80 bg-[#16181A] border-r border-white/5 flex flex-col h-screen shrink-0">
		<div class="p-8 flex flex-col h-full">
			<div class="bg-gradient-to-br from-[#818CF8] to-[#6366F1] rounded-2xl p-6 mb-8 shadow-lg shadow-indigo-500/10">
				<h2 class="text-xl font-bold text-white leading-tight">Hello <%=user.getFull_name()%></h2>
				<p class="text-indigo-100/80 text-xs font-medium mt-1">Department Coordinator</p>
			</div>

			<nav class="flex-1 space-y-5 px-1">
				<a class="flex items-center space-x-4 text-slate-400 hover:text-white transition-colors py-2.5" href="deptCoordinatorDashboard.jsp"> 
					<span class="material-symbols-outlined text-[24px]">grid_view</span> 
					<span class="font-medium text-[15px]">DashBoard</span>
				</a> 
				<a class="flex items-center space-x-4 text-slate-400 hover:text-white transition-colors py-2.5" href="#"> 
					<span class="material-symbols-outlined text-[24px]">account_tree</span>
					<span class="font-medium text-[15px]">Manage Sub Branch...</span>
				</a> 
				<a class="flex items-center space-x-4 text-slate-400 hover:text-white transition-colors py-2.5" href="#"> 
					<span class="material-symbols-outlined text-[24px]">analytics</span>
					<span class="font-medium text-[15px]">Projects Proposed</span>
				</a> 
				<a class="flex items-center space-x-4 text-slate-400 hover:text-white transition-colors py-2.5" href="#"> 
					<span class="material-symbols-outlined text-[24px]">person</span>
					<span class="font-medium text-[15px]">Profile</span>
				</a>
			</nav>

			<div class="mt-auto pt-6 border-t border-white/5">
				<a class="flex items-center gap-4 px-2 py-2 text-slate-400 hover:text-red-400 transition-colors" href="#"> 
					<span class="material-symbols-outlined">logout</span>
					<span class="text-sm font-medium">Log Out</span>
				</a>
			</div>
		</div>
	</aside>

	<main class="flex-1 flex flex-col h-full overflow-hidden p-6 lg:p-10">
		<header class="mb-6 max-w-4xl mx-auto w-full shrink-0">
			<p class="text-slate-500 text-sm mb-1">Portal / Dashboard / Announcement</p>
			<h1 class="text-3xl font-bold text-white">What's On Your Mind?</h1>
		</header>

		<div class="max-w-4xl mx-auto w-full flex-1 flex flex-col min-h-0">
			<div class="bg-card-dark rounded-[2rem] shadow-2xl overflow-hidden border border-slate-800 flex flex-col max-h-full">
				<div class="bg-gradient-to-r from-accent-purple to-[#9D8BFF] px-8 py-5 text-white shrink-0">
					<div class="flex items-center gap-4">
						<div class="bg-white/20 p-2 rounded-xl backdrop-blur-md">
							<span class="material-symbols-outlined text-2xl">campaign</span>
						</div>
						<h2 class="text-xl font-bold uppercase tracking-wider">New Announcement</h2>
					</div>
				</div>

				<form action="AnnouncementServlet" method="POST" enctype="multipart/form-data" class="p-8 lg:p-10 space-y-6 overflow-y-auto custom-scrollbar">
					<div class="grid grid-cols-1 md:grid-cols-2 gap-8">
						<div class="space-y-6">
							<div class="space-y-2">
								<label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1" for="title">Title</label> 
								<input class="w-full bg-slate-800/50 border-2 border-transparent focus:border-primary focus:ring-0 rounded-2xl px-5 py-3.5 text-white transition-all outline-none" id="title" name="title" placeholder="e.g. Maintenance Schedule" type="text" required />
							</div>
							<div class="space-y-2">
								<label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1" for="location">Location</label> 
								<input class="w-full bg-slate-800/50 border-2 border-transparent focus:border-primary focus:ring-0 rounded-2xl px-5 py-3.5 text-white transition-all outline-none" id="location" name="location" placeholder="e.g. Main Lobby, Block B" type="text" required />
							</div>
						</div>
						<div class="space-y-2">
							<label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1" for="type">Announcement Type</label>
							<div class="relative">
								<select class="w-full appearance-none bg-slate-800/50 border-2 border-transparent focus:border-primary focus:ring-0 rounded-2xl px-5 py-3.5 text-white transition-all outline-none cursor-pointer" id="type" name="type">
									<option value="general" class="bg-card-dark">General Announcement</option>
									<option value="emergency" class="bg-card-dark">Emergency Alert</option>
									<option value="update" class="bg-card-dark">Project Update</option>
								</select> 
								<span class="material-symbols-outlined absolute right-4 top-1/2 -translate-y-1/2 pointer-events-none text-slate-500">expand_more</span>
							</div>
						</div>
					</div>

					<div class="space-y-2">
						<label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1" for="description">Description</label>
						<textarea class="w-full bg-slate-800/50 border-2 border-transparent focus:border-primary focus:ring-0 rounded-2xl px-5 py-4 text-white transition-all outline-none resize-none" id="description" name="description" placeholder="Share the details with the public..." rows="4" required></textarea>
					</div>

					<div class="space-y-2">
						<label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1">Attach Media</label>
						<div class="group relative flex flex-col items-center justify-center border-2 border-dashed border-slate-700 hover:border-primary rounded-[2rem] p-8 bg-slate-800/20 transition-all cursor-pointer">
							<input accept="image/*" class="absolute inset-0 opacity-0 cursor-pointer" type="file" name="image" />
							<div class="bg-primary/10 p-4 rounded-full mb-3 group-hover:scale-110 transition-transform">
								<span class="material-symbols-outlined text-3xl text-primary">add_a_photo</span>
							</div>
							<p class="text-sm font-semibold text-slate-300">Click to upload image</p>
							<p class="text-xs text-slate-500 mt-1">PNG, JPG up to 5MB</p>
						</div>
					</div>

					<div class="pt-4 flex justify-center shrink-0">
						<button class="bg-primary hover:bg-orange-600 text-white font-bold py-4 px-16 rounded-2xl shadow-xl shadow-orange-500/20 flex items-center gap-3 transform active:scale-95 transition-all" type="submit">
							<span>Post Announcement</span> 
							<span class="material-symbols-outlined">send</span>
						</button>
					</div>
				</form>
			</div>
		</div>

		<footer class="mt-auto text-center text-slate-600 text-[10px] uppercase tracking-[0.2em] py-6 shrink-0">
			© 2026 Spotfix Portal • Secure Department Gateway
		</footer>
	</main>

</body>
</html>