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
<html lang="en" class="dark">
<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Create Your Proposal | Citizen Service Portal</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,container-queries"></script>
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&amp;display=swap" rel="stylesheet" />
    <style type="text/tailwindcss">
        :root {
            --primary: #ff851b;
            --surface-dark: #1E2127;
            --background-dark: #121212;
            --input-dark: #2a2d34;
        }
        body {
            font-family: 'Inter', sans-serif;
            background-color: var(--background-dark);
        }
        .header-gradient {
            background: linear-gradient(135deg, #6366f1 0%, #a855f7 100%);
        }
        .custom-scrollbar::-webkit-scrollbar {
            width: 6px;
        }
        .custom-scrollbar::-webkit-scrollbar-track {
            background: transparent;
        }
        .custom-scrollbar::-webkit-scrollbar-thumb {
            background: #4b5563;
            border-radius: 10px;
        }
    </style>
</head>

<body class="h-screen flex overflow-hidden text-slate-100">

    <aside class="w-80 bg-[#16181A] border-r border-white/5 flex flex-col h-screen shrink-0">
        <div class="p-8 flex flex-col h-full">
            <div class="bg-gradient-to-br from-[#818CF8] to-[#6366F1] rounded-2xl p-6 mb-8 shadow-xl shadow-indigo-500/20">
                <h2 class="text-xl font-bold text-white leading-tight"><%=user.getFull_name()%></h2>
                <p class="text-indigo-100/70 text-xs font-bold uppercase mt-1 tracking-widest">Dept Coordinator</p>
            </div>

            <nav class="flex-1 space-y-3">
                <a class="flex items-center space-x-4 text-slate-400 hover:text-white transition-all py-3 px-4 rounded-xl hover:bg-white/5" href="deptCoordinatorDashboard.jsp"> 
                    <span class="material-symbols-outlined text-[24px]">grid_view</span> 
                    <span class="font-medium">Dashboard</span>
                </a> 
                <a class="flex items-center space-x-4 text-slate-400 hover:text-white transition-all py-3 px-4 rounded-xl hover:bg-white/5" href="#"> 
                    <span class="material-symbols-outlined text-[24px]">account_tree</span>
                    <span class="font-medium">Manage Sub Branch</span>
                </a> 
                <a class="flex items-center space-x-4 text-slate-400 hover:text-white transition-all py-3 px-4 rounded-xl hover:bg-white/5" href="#"> 
                    <span class="material-symbols-outlined text-[24px]">analytics</span>
                    <span class="font-medium">Projects Proposed</span>
                </a> 
            </nav>

            <div class="mt-auto pt-6 border-t border-white/5">
                <a class="flex items-center gap-4 px-4 py-3 text-slate-400 hover:text-red-400 transition-colors" href="#"> 
                    <span class="material-symbols-outlined">logout</span>
                    <span class="text-sm font-medium">Log Out</span>
                </a>
            </div>
        </div>
    </aside>

    <main class="flex-1 flex items-center justify-center p-6 lg:p-12 overflow-hidden bg-[#0d0f11]">
        <div class="w-full max-w-5xl bg-[var(--surface-dark)] rounded-[3rem] shadow-[0_35px_60px_-15px_rgba(0,0,0,0.5)] border border-white/10 flex flex-col max-h-[92vh] overflow-hidden">
            
            <div class="header-gradient py-8 px-10 text-center text-white shrink-0 relative overflow-hidden">
                <div class="absolute top-0 left-0 w-full h-full opacity-10 pointer-events-none">
                    <svg width="100%" height="100%"><pattern id="pattern" width="40" height="40" patternUnits="userSpaceOnUse"><circle cx="20" cy="20" r="1" fill="white"/></pattern><rect width="100%" height="100%" fill="url(#pattern)"/></svg>
                </div>
                <h1 class="text-3xl font-extrabold tracking-tight">Create your Proposal</h1>
                <p class="text-xs opacity-80 uppercase tracking-[0.3em] mt-2 font-medium">Official Submission Portal</p>
            </div>

            <form action="#" class="p-10 lg:p-14 space-y-8 overflow-y-auto custom-scrollbar" method="POST">
                <div class="grid grid-cols-1 lg:grid-cols-2 gap-10">
                    
                    <div class="space-y-6">
                        <div class="group">
                            <label class="block text-[11px] font-bold text-slate-500 uppercase tracking-widest mb-2 ml-1 transition-colors group-focus-within:text-[var(--primary)]">Proposal Title</label>
                            <input class="w-full bg-[var(--input-dark)] border border-white/5 rounded-2xl px-5 py-4 text-white placeholder-slate-600 focus:ring-2 focus:ring-[var(--primary)] focus:bg-[#32363e] outline-none transition-all" placeholder="Enter a concise title..." type="text" />
                        </div>
                        <div>
                            <label class="block text-[11px] font-bold text-slate-500 uppercase tracking-widest mb-2 ml-1">Project Category</label>
                            <div class="relative">
                                <select class="w-full bg-[var(--input-dark)] text-white border border-white/5 appearance-none px-5 py-4 rounded-2xl cursor-pointer focus:ring-2 focus:ring-[var(--primary)] outline-none transition-all">
                                    <option>Infrastructure & Development</option>
                                    <option>Water & Sanitation</option>
                                    <option>Roads & Connectivity</option>
                                    <option>Environmental Initiatives</option>
                                </select>
                                <span class="material-symbols-outlined absolute right-5 top-1/2 -translate-y-1/2 pointer-events-none text-slate-400">unfold_more</span>
                            </div>
                        </div>
                        <div>
                            <label class="block text-[11px] font-bold text-slate-500 uppercase tracking-widest mb-2 ml-1">Brief Description</label>
                            <textarea class="w-full bg-[var(--input-dark)] border border-white/5 rounded-2xl px-5 py-4 text-white placeholder-slate-600 focus:ring-2 focus:ring-[var(--primary)] outline-none resize-none transition-all" placeholder="Provide key details about the project scope..." rows="4"></textarea>
                        </div>
                    </div>

                    <div class="space-y-6">
                        <div>
                            <label class="block text-[11px] font-bold text-slate-500 uppercase tracking-widest mb-2 ml-1">Location Details</label>
                            <input class="w-full bg-[var(--input-dark)] border border-white/5 rounded-2xl px-5 py-4 text-white focus:ring-2 focus:ring-[var(--primary)] outline-none transition-all" placeholder="Specific landmark or area..." type="text" />
                        </div>
                        
                        <div class="grid grid-cols-2 gap-6">
                            <div class="space-y-2">
                                <label class="block text-[11px] font-bold text-slate-500 uppercase tracking-widest ml-1">Concept Visual</label>
                                <div class="border-2 border-dashed border-white/10 rounded-2xl p-6 text-center hover:border-[var(--primary)] hover:bg-white/5 cursor-pointer group transition-all">
                                    <span class="material-symbols-outlined text-slate-500 text-3xl group-hover:text-[var(--primary)] transition-all">add_photo_alternate</span>
                                    <p class="text-[10px] text-slate-400 font-bold mt-2 uppercase">Upload Image</p>
                                </div>
                            </div>
                            <div class="space-y-2">
                                <label class="block text-[11px] font-bold text-slate-500 uppercase tracking-widest ml-1">Documentation</label>
                                <div class="border-2 border-dashed border-white/10 rounded-2xl p-6 text-center hover:border-[var(--primary)] hover:bg-white/5 cursor-pointer group transition-all">
                                    <span class="material-symbols-outlined text-slate-500 text-3xl group-hover:text-[var(--primary)] transition-all">upload_file</span>
                                    <p class="text-[10px] text-slate-400 font-bold mt-2 uppercase">Attach PDF</p>
                                </div>
                            </div>
                        </div>

                        <div class="bg-blue-500/5 border border-blue-500/20 rounded-2xl p-5 flex items-start gap-4">
                            <span class="material-symbols-outlined text-blue-400 mt-0.5">verified_user</span>
                            <p class="text-[11px] text-blue-200/80 leading-relaxed">
                                Submitting this form initiates an official review. Please double-check all technical specifications and location markers.
                            </p>
                        </div>
                    </div>
                </div>

                <div class="pt-8 border-t border-white/5 shrink-0">
                    <button class="w-full bg-[var(--primary)] hover:bg-orange-500 text-white py-5 rounded-2xl font-bold text-lg flex items-center justify-center space-x-4 shadow-xl shadow-orange-500/20 transition-all transform hover:-translate-y-1 active:scale-[0.98]" type="submit">
                        <span class="tracking-wide">Submit Official Proposal</span> 
                        <span class="material-symbols-outlined">rocket_launch</span>
                    </button>
                    <div class="mt-6 flex justify-center items-center gap-2 opacity-30">
                        <span class="h-px w-8 bg-slate-500"></span>
                        <p class="text-[9px] uppercase tracking-[0.5em] text-slate-400 font-bold">Spotfix Systems • Goa</p>
                        <span class="h-px w-8 bg-slate-500"></span>
                    </div>
                </div>
            </form>
        </div>
    </main>
</body>
</html>