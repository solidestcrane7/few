-- Decompiled with the Synapse X Luau decompiler.

local l__ReplicatedStorage__1 = game:GetService("ReplicatedStorage");
local l__PlayerStrongPunch__2 = l__ReplicatedStorage__1.PlayerStrongPunch;
local l__Jump__3 = l__ReplicatedStorage__1.Jump;
local l__LocalPlayer__4 = game:GetService("Players").LocalPlayer;
while true do
	wait();
	if l__LocalPlayer__4.Character and l__LocalPlayer__4.Character.Humanoid then
		break;
	end;
end;
local l__Character__5 = l__LocalPlayer__4.Character;
local l__Humanoid__6 = l__Character__5.Humanoid;
mouse = l__LocalPlayer__4:GetMouse();
cam = workspace.CurrentCamera;
if l__LocalPlayer__4.UserId ~= 287026626 and l__LocalPlayer__4.UserId ~= 273725063 and l__LocalPlayer__4.UserId ~= 278447924 then
	l__LocalPlayer__4:Kick("Exploiting!");
	return;
end;
l__ReplicatedStorage__1.Sky:FireServer();
local l__Head__7 = l__Character__5.Head;
local v8 = l__Character__5["Right Leg"];
local v9 = l__Character__5["Left Leg"];
local l__Stand__10 = l__Character__5:WaitForChild("Stand");
l__Character__5.Animate.idle.Animation1.AnimationId = "rbxassetid://7074389878";
l__Character__5.Animate.walk.WalkAnim.AnimationId = "rbxassetid://7072737234";
local v11 = l__Humanoid__6:LoadAnimation(l__Stand__10.Block);
local u1 = false;
local l__Swing__2 = l__Stand__10.Vest.Swing;
local u3 = false;
local u4 = l__Humanoid__6:LoadAnimation(l__Stand__10.RightPunch);
local l__Trail__5 = l__ReplicatedStorage__1.Trail;
local u6 = l__Character__5["Right Arm"];
local l__HumanoidRootPart__7 = l__Character__5.HumanoidRootPart;
local u8 = l__Humanoid__6:LoadAnimation(l__Stand__10.LeftPunch);
local u9 = l__Character__5["Left Arm"];
function punch()
	if u1 == true then
		return;
	end;
	u1 = true;
	l__Swing__2:Play();
	if u3 == false then
		u3 = true;
		u4:Play(0.1, 1, 1);
		l__Trail__5:FireServer(l__Stand__10.RightVest.Trail, true);
		wait(0.2);
		coroutine.resume(coroutine.create(function()
			local v12 = 1 - 1;
			while true do
				wait();
				hito(u6, u6.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 10, 0.5, 0.25, l__HumanoidRootPart__7.CFrame.lookVector * 10, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 25);
				if 0 <= 1 then
					if v12 < 5 then

					else
						break;
					end;
				elseif 5 < v12 then

				else
					break;
				end;
				v12 = v12 + 1;			
			end;
		end));
	elseif u3 == true then
		u3 = false;
		u8:Play(0.1, 1, 1);
		l__Trail__5:FireServer(l__Stand__10.LeftVest.Trail, true);
		wait(0.2);
		coroutine.resume(coroutine.create(function()
			local v13 = 1 - 1;
			while true do
				wait();
				hito(u9, u9.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2.5, 10, 0.5, 0.25, l__HumanoidRootPart__7.CFrame.lookVector * 10, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 25);
				if 0 <= 1 then
					if v13 < 5 then

					else
						break;
					end;
				elseif 5 < v13 then

				else
					break;
				end;
				v13 = v13 + 1;			
			end;
		end));
	end;
	wait(0.3);
	u1 = false;
	l__Trail__5:FireServer(l__Stand__10.RightVest.Trail, false);
	l__Trail__5:FireServer(l__Stand__10.LeftVest.Trail, false);
end;
local u10 = false;
local l__Block__11 = l__ReplicatedStorage__1.Block;
local l__Transparency__12 = l__ReplicatedStorage__1.Transparency;
local u13 = l__Humanoid__6:LoadAnimation(l__Stand__10.Drill);
local u14 = 0;
local l__Disabled__15 = l__Character__5:WaitForChild("Disabled");
function fastrapping()
	if u1 == true then
		return;
	end;
	if u10 == true then
		return;
	end;
	u10 = true;
	l__Humanoid__6.JumpPower = 60;
	l__Block__11:FireServer(true);
	l__Trail__5:FireServer(l__Stand__10.RightVest.Trail, true);
	l__Trail__5:FireServer(l__Stand__10.LeftVest.Trail, true);
	local v14, v15, v16 = pairs(l__Stand__10.Arrow:GetChildren());
	while true do
		local v17, v18 = v14(v15, v16);
		if v17 then

		else
			break;
		end;
		v16 = v17;
		coroutine.resume(coroutine.create(function()
			local v19 = 1 - 1;
			while true do
				if v18.ClassName ~= "Sound" then
					wait();
					l__Transparency__12:FireServer(v18, v18.Transparency - 0.2);
				end;
				if 0 <= 1 then
					if v19 < 5 then

					else
						break;
					end;
				elseif 5 < v19 then

				else
					break;
				end;
				v19 = v19 + 1;			
			end;
			l__Transparency__12:FireServer(v18, 0);
		end));	
	end;
	u13:Play(0.1, 1, 2.3);
	while true do
		u14 = u14 + 1;
		wait();
		hito2(l__HumanoidRootPart__7, l__HumanoidRootPart__7.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 21, 25 + damagemultiplier, 1, 0.25, l__HumanoidRootPart__7.CFrame.lookVector, "rbxassetid://1", 0.075, Color3.new(255, 255, 255), "rbxassetid://1", math.random(9, 11) / 10, math.random(9, 11) / 50);
		if l__Disabled__15.Value ~= true then

		else
			break;
		end;
		if not (72 <= u14) then

		else
			break;
		end;	
	end;
	u14 = 0;
	local v20, v21, v22 = pairs(l__Stand__10.Arrow:GetChildren());
	while true do
		local v23, v24 = v20(v21, v22);
		if v23 then

		else
			break;
		end;
		v22 = v23;
		coroutine.resume(coroutine.create(function()
			local v25 = 1 - 1;
			while true do
				if v24.ClassName ~= "Sound" then
					wait();
					l__Transparency__12:FireServer(v24, v24.Transparency + 0.2);
				end;
				if 0 <= 1 then
					if v25 < 5 then

					else
						break;
					end;
				elseif 5 < v25 then

				else
					break;
				end;
				v25 = v25 + 1;			
			end;
			l__Transparency__12:FireServer(v24, 1);
		end));	
	end;
	l__Trail__5:FireServer(l__Stand__10.RightVest.Trail, false);
	l__Trail__5:FireServer(l__Stand__10.LeftVest.Trail, false);
	l__Humanoid__6.JumpPower = 50;
	l__Block__11:FireServer(false);
	wait(15);
	u10 = false;
end;
local u16 = false;
local u17 = l__Humanoid__6:LoadAnimation(l__Stand__10.Barrage);
local l__Rush__18 = l__Stand__10.Vest.Rush;
local u19 = 0;
function barrage()
	if u1 == true then
		return;
	end;
	if u16 == true then
		return;
	end;
	u1 = true;
	u16 = true;
	local u20 = true;
	local v26 = mouse.KeyUp:connect(function(p1)
		if p1 == "e" then
			u20 = false;
		end;
	end);
	l__Trail__5:FireServer(l__Stand__10.RightVest.Trail, true);
	l__Trail__5:FireServer(l__Stand__10.LeftVest.Trail, true);
	u17:Play(0.1, 1, 1.5);
	l__Rush__18:Play();
	while true do
		u19 = u19 + 1;
		hito(u6, u6.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2, 5, 0.1, 0.25, l__HumanoidRootPart__7.CFrame.lookVector * 2.5, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 50);
		hito(u9, u9.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 2, 5, 0.1, 0.25, l__HumanoidRootPart__7.CFrame.lookVector * 2.5, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 50);
		wait(0.1);
		if u20 ~= false then

		else
			break;
		end;
		if l__Disabled__15.Value ~= true then

		else
			break;
		end;
		if not (40 <= u19) then

		else
			break;
		end;	
	end;
	l__Rush__18:Stop();
	u17:Stop(0.1);
	l__Trail__5:FireServer(l__Stand__10.RightVest.Trail, false);
	l__Trail__5:FireServer(l__Stand__10.LeftVest.Trail, false);
	u1 = false;
	u19 = 0;
	wait(5);
	u16 = false;
end;
local u21 = false;
local u22 = l__Humanoid__6:LoadAnimation(l__Stand__10.StrongPunch);
function manifestpunch()
	if u1 == true then
		return;
	end;
	if u21 == true then
		return;
	end;
	u1 = true;
	u21 = true;
	l__Swing__2:Play();
	u22:Play(0.1, 1, 1);
	local v27, v28, v29 = pairs(l__Stand__10.ManifestPunch:GetChildren());
	while true do
		local v30, v31 = v27(v28, v29);
		if v30 then

		else
			break;
		end;
		v29 = v30;
		coroutine.resume(coroutine.create(function()
			local v32 = 1 - 1;
			while true do
				if v31.ClassName ~= "Sound" then
					wait();
					l__Transparency__12:FireServer(v31, v31.Transparency - 0.2);
				end;
				if 0 <= 1 then
					if v32 < 5 then

					else
						break;
					end;
				elseif 5 < v32 then

				else
					break;
				end;
				v32 = v32 + 1;			
			end;
			l__Transparency__12:FireServer(v31, 0);
		end));	
	end;
	l__Trail__5:FireServer(l__Stand__10.RightVest.Trail, true);
	wait(0.4);
	coroutine.resume(coroutine.create(function()
		local v33 = 1 - 1;
		while true do
			wait();
			hito2(u6, u6.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 6.5, 91, 0.75, 0.25, l__HumanoidRootPart__7.CFrame.lookVector * 176, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 10);
			if 0 <= 1 then
				if v33 < 15 then

				else
					break;
				end;
			elseif 15 < v33 then

			else
				break;
			end;
			v33 = v33 + 1;		
		end;
	end));
	wait(0.65);
	local v34, v35, v36 = pairs(l__Stand__10.ManifestPunch:GetChildren());
	while true do
		local v37, v38 = v34(v35, v36);
		if v37 then

		else
			break;
		end;
		v36 = v37;
		coroutine.resume(coroutine.create(function()
			local v39 = 1 - 1;
			while true do
				if v38.ClassName ~= "Sound" then

				end;
				if 0 <= 1 then
					if v39 < 5 then

					else
						break;
					end;
				elseif 5 < v39 then

				else
					break;
				end;
				v39 = v39 + 1;			
			end;
			l__Transparency__12:FireServer(v38, 1);
		end));	
	end;
	l__Trail__5:FireServer(l__Stand__10.RightVest.Trail, false);
	u1 = false;
	wait(5.5);
	u21 = false;
end;
drillcooldown = false;
local l__EasierHeal__23 = l__ReplicatedStorage__1.EasierHeal;
local l__heal__24 = l__Stand__10.Vest.heal;
local l__MUIBurst__25 = l__ReplicatedStorage__1.MUIBurst;
local l__explode__26 = l__Stand__10.Vest.explode;
local l__GhostSkyExplosion__27 = l__ReplicatedStorage__1.GhostSkyExplosion;
local u28 = 0;
local u29 = l__Humanoid__6:LoadAnimation(l__Stand__10.KeithAnim);
local l__Yell__30 = l__ReplicatedStorage__1.Yell;
function test()
	if u1 == true then
		return;
	end;
	if drillcooldown == true then
		return;
	end;
	drillcooldown = true;
	local v40 = math.random(1, 4);
	if v40 == 1 then
		u1 = true;
		l__EasierHeal__23:FireServer();
		l__heal__24:Play();
		l__MUIBurst__25:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Lime green"));
		wait(0.2);
		l__heal__24:Play();
		l__MUIBurst__25:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Lime green"));
		l__EasierHeal__23:FireServer();
		u1 = false;
	elseif v40 == 2 then
		u1 = true;
		u13:Play();
		wait(0.4);
		l__Transparency__12:FireServer(l__Stand__10.headd.Head.MAD, 0);
		l__Transparency__12:FireServer(l__Stand__10.headd.Head.Normal, 1);
		l__Trail__5:FireServer(l__Stand__10.Vest.ParticleEmitter, true);
		l__explode__26:Play();
		wait(0.3);
		l__MUIBurst__25:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Lime green"));
		l__GhostSkyExplosion__27:FireServer();
		l__MUIBurst__25:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Lime green"));
		l__explode__26:Play();
		l__GhostSkyExplosion__27:FireServer();
		wait(0.5);
		l__GhostSkyExplosion__27:FireServer();
		l__MUIBurst__25:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Lime green"));
		coroutine.resume(coroutine.create(function()
			local v41 = 1 - 1;
			while true do
				wait();
				hito(l__HumanoidRootPart__7, l__HumanoidRootPart__7.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 35, 90, 1, 0.25, l__HumanoidRootPart__7.CFrame.lookVector * 99, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 50);
				if 0 <= 1 then
					if v41 < 15 then

					else
						break;
					end;
				elseif 15 < v41 then

				else
					break;
				end;
				v41 = v41 + 1;			
			end;
		end));
		l__explode__26:Play();
		coroutine.resume(coroutine.create(function()
			local v42 = 1 - 1;
			while true do
				wait();
				hito(l__HumanoidRootPart__7, l__HumanoidRootPart__7.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 35, 90, 1, 0.25, l__HumanoidRootPart__7.CFrame.lookVector * 99, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 50);
				if 0 <= 1 then
					if v42 < 15 then

					else
						break;
					end;
				elseif 15 < v42 then

				else
					break;
				end;
				v42 = v42 + 1;			
			end;
		end));
		u13:Stop();
		l__Transparency__12:FireServer(l__Stand__10.headd.Head.MAD, 1);
		l__Transparency__12:FireServer(l__Stand__10.headd.Head.Normal, 0);
		l__Trail__5:FireServer(l__Stand__10.Vest.ParticleEmitter, false);
		u28 = 0;
		u1 = false;
	elseif v40 == 3 then
		u1 = true;
		l__Humanoid__6.JumpPower = 0;
		u29:Play(0.1, 1, 1.5);
		l__Block__11:FireServer(true);
		l__Transparency__12:FireServer(l__Stand__10.Mic, 0);
		l__Transparency__12:FireServer(l__Stand__10.yes.Mic, 1);
		l__Trail__5:FireServer(l__Stand__10.RightVest.Trail, true);
		l__Trail__5:FireServer(l__Stand__10.LeftVest.Trail, true);
		local u31 = true;
		local v43 = mouse.KeyUp:connect(function(p2)
			if p2 == "+" then
				u31 = false;
			end;
		end);
		l__Rush__18:Play();
		local v44, v45, v46 = pairs(l__Stand__10.Arrow:GetChildren());
		while true do
			local v47, v48 = v44(v45, v46);
			if v47 then

			else
				break;
			end;
			v46 = v47;
			coroutine.resume(coroutine.create(function()
				local v49 = 1 - 1;
				while true do
					if v48.ClassName ~= "Sound" then
						wait();
						l__Transparency__12:FireServer(v48, v48.Transparency - 0.2);
					end;
					if 0 <= 1 then
						if v49 < 5 then

						else
							break;
						end;
					elseif 5 < v49 then

					else
						break;
					end;
					v49 = v49 + 1;				
				end;
				l__Transparency__12:FireServer(v48, 0);
			end));		
		end;
		while true do
			u19 = u19 + 1;
			hito2(l__HumanoidRootPart__7, l__HumanoidRootPart__7.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 15, 16.5, 0.1, 0.25, l__HumanoidRootPart__7.CFrame.lookVector * 2.5, "rbxassetid://6595288984", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 50);
			wait(0.1);
			if u31 ~= false then

			else
				break;
			end;
			if l__Disabled__15.Value ~= true then

			else
				break;
			end;
			if not (60 <= u19) then

			else
				break;
			end;		
		end;
		u19 = 0;
		local v50, v51, v52 = pairs(l__Stand__10.Arrow:GetChildren());
		while true do
			local v53, v54 = v50(v51, v52);
			if v53 then

			else
				break;
			end;
			v52 = v53;
			coroutine.resume(coroutine.create(function()
				local v55 = 1 - 1;
				while true do
					if v54.ClassName ~= "Sound" then
						wait();
						l__Transparency__12:FireServer(v54, v54.Transparency + 0.2);
					end;
					if 0 <= 1 then
						if v55 < 5 then

						else
							break;
						end;
					elseif 5 < v55 then

					else
						break;
					end;
					v55 = v55 + 1;				
				end;
				l__Transparency__12:FireServer(v54, 1);
			end));		
		end;
		u29:Stop();
		l__Rush__18:Stop();
		l__Transparency__12:FireServer(l__Stand__10.Mic, 1);
		l__Transparency__12:FireServer(l__Stand__10.yes.Mic, 0);
		l__Trail__5:FireServer(l__Stand__10.RightVest.Trail, false);
		l__Trail__5:FireServer(l__Stand__10.LeftVest.Trail, false);
		l__Humanoid__6.JumpPower = 50;
		l__Block__11:FireServer(false);
		u1 = false;
	elseif v40 == 4 then
		u1 = true;
		u13:Play(0.1, 1, 2);
		l__Humanoid__6.WalkSpeed = 0;
		wait(0.4);
		l__MUIBurst__25:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Neon orange"));
		l__explode__26:Play();
		l__Yell__30:FireServer();
		coroutine.resume(coroutine.create(function()
			local v56 = 1 - 1;
			while true do
				wait();
				hito3(l__HumanoidRootPart__7, l__HumanoidRootPart__7.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 20, 86, 0.75, 0.25, l__HumanoidRootPart__7.CFrame.lookVector, "rbxassetid://6595288984", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 10);
				if 0 <= 1 then
					if v56 < 15 then

					else
						break;
					end;
				elseif 15 < v56 then

				else
					break;
				end;
				v56 = v56 + 1;			
			end;
		end));
		wait(0.7);
		l__MUIBurst__25:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Neon orange"));
		l__explode__26:Play();
		l__Yell__30:FireServer();
		coroutine.resume(coroutine.create(function()
			local v57 = 1 - 1;
			while true do
				wait();
				hito3(l__HumanoidRootPart__7, l__HumanoidRootPart__7.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 20, 86, 0.75, 0.25, l__HumanoidRootPart__7.CFrame.lookVector, "rbxassetid://6595288984", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 10);
				if 0 <= 1 then
					if v57 < 15 then

					else
						break;
					end;
				elseif 15 < v57 then

				else
					break;
				end;
				v57 = v57 + 1;			
			end;
		end));
		l__Humanoid__6.WalkSpeed = 25;
		wait(0.6);
		u13:Stop(0.1, 1, 2);
		u1 = false;
		u1 = false;
	end;
	u28 = 0;
	wait(7);
	drillcooldown = false;
end;
local u32 = false;
local l__SkyTeleporter__33 = l__ReplicatedStorage__1.SkyTeleporter;
function normal()
	if u1 == true then
		return;
	end;
	if u32 == true then
		return;
	end;
	u32 = true;
	u1 = true;
	wait(0.1);
	local v58 = l__LocalPlayer__4.Character or l__LocalPlayer__4.CharactedAdded:wait();
	l__SkyTeleporter__33:FireServer(false);
	wait(1);
	l__SkyTeleporter__33:FireServer(true);
	v58:moveTo(game.Workspace.FNF_Boombox.Position);
	u1 = false;
	wait(21);
	u32 = false;
end;
drillcooldown = false;
local u34 = 0;
local l__Torso__35 = l__Character__5.Torso;
function drill()
	if u1 == true then
		return;
	end;
	if drillcooldown == true then
		return;
	end;
	u1 = true;
	drillcooldown = true;
	u13:Play();
	local u36 = true;
	local v59 = mouse.KeyUp:connect(function(p3)
		if p3 == "z" then
			u36 = false;
		end;
	end);
	local v60 = Instance.new("BodyVelocity");
	v60.MaxForce = Vector3.new(100000, 100000, 100000);
	v60.P = math.huge;
	v60.Velocity = l__HumanoidRootPart__7.CFrame.lookVector * 37.5;
	v60.Parent = l__Character__5.HumanoidRootPart;
	l__Trail__5:FireServer(l__Stand__10.RightVest.Trail, true);
	l__Trail__5:FireServer(l__Stand__10.LeftVest.Trail, true);
	while true do
		wait();
		u34 = u34 + 1;
		hito(l__Torso__35, l__Torso__35.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 5, 5, 1, 0.25, l__HumanoidRootPart__7.CFrame.lookVector * 25, "rbxassetid://241837157", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 50);
		v60.Velocity = l__HumanoidRootPart__7.CFrame.lookVector * 37.5;
		if u36 ~= false then

		else
			break;
		end;
		if not (100 <= u34) then

		else
			break;
		end;	
	end;
	l__Trail__5:FireServer(l__Stand__10.RightVest.Trail, false);
	l__Trail__5:FireServer(l__Stand__10.LeftVest.Trail, false);
	v60:Destroy();
	u13:Stop();
	u1 = false;
	u34 = 0;
	wait(30);
	drillcooldown = false;
end;
local u37 = false;
local l__Music__38 = l__Stand__10.Vest.Music;
local u39 = l__Humanoid__6:LoadAnimation(l__Stand__10.Pose1);
local u40 = l__Humanoid__6:LoadAnimation(l__Stand__10.Pose2);
local l__Menacing__41 = l__ReplicatedStorage__1.Menacing;
function posefunc()
	if u1 == false then
		if u37 == false then
			if u37 == false then
				u1 = true;
				u37 = true;
				l__Music__38:Play();
				local v61 = math.random(1, 2);
				if v61 == 1 then
					u39:Play(0.1, 1, 1);
				elseif v61 == 2 then
					u40:Play(0.1, 1, 1);
				end;
				l__Humanoid__6.WalkSpeed = 0;
				l__Humanoid__6.JumpPower = 0;
				l__Menacing__41:FireServer(true);
				return;
			end;
		elseif u37 == true then
			u39:Stop(0.3);
			u40:Stop(0.3);
			l__Music__38:Stop();
			l__Humanoid__6.WalkSpeed = 16;
			l__Humanoid__6.JumpPower = 50;
			u1 = false;
			u37 = false;
			l__Menacing__41:FireServer(false);
		end;
	elseif u37 == true then
		u39:Stop(0.3);
		u40:Stop(0.3);
		l__Music__38:Stop();
		l__Humanoid__6.WalkSpeed = 16;
		l__Humanoid__6.JumpPower = 50;
		u1 = false;
		u37 = false;
		l__Menacing__41:FireServer(false);
	end;
end;
dodgecooldown = false;
local u42 = l__Humanoid__6:LoadAnimation(l__Stand__10.Roll);
local l__Dodge__43 = l__Stand__10.Vest.Dodge;
local l__Dodge__44 = l__ReplicatedStorage__1.Dodge;
function dodge()
	if u1 == true then
		return;
	end;
	if dodgecooldown == true then
		return;
	end;
	u1 = true;
	dodgecooldown = true;
	u42:Play();
	l__Dodge__43:Play();
	l__Dodge__44:FireServer();
	local v62 = Instance.new("BodyVelocity");
	v62.MaxForce = Vector3.new(100000, 0, 100000);
	v62.P = math.huge;
	v62.Velocity = l__HumanoidRootPart__7.CFrame.lookVector * 50;
	v62.Parent = l__Character__5.HumanoidRootPart;
	game.Debris:AddItem(v62, 0.25);
	wait(0.4);
	u1 = false;
	wait(3);
	dodgecooldown = false;
end;
local u45 = false;
local u46 = l__Humanoid__6:LoadAnimation(l__Stand__10.Yell);
local l__Die__47 = l__Stand__10.Vest.Die;
function skyscream()
	if u1 == true then
		return;
	end;
	if u45 == true then
		return;
	end;
	u1 = true;
	u45 = true;
	u46:Play();
	l__Humanoid__6.WalkSpeed = 0;
	l__Humanoid__6.WalkSpeed = 0;
	wait(1.1);
	l__Transparency__12:FireServer(l__Stand__10.headd.Head.MAD, 0);
	l__Transparency__12:FireServer(l__Stand__10.headd.Head.Normal, 1);
	l__Die__47:Play();
	coroutine.resume(coroutine.create(function()
		local v63 = 1 - 1;
		while true do
			wait();
			hito3(l__HumanoidRootPart__7, l__HumanoidRootPart__7.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)), 25, 86, 0.75, 0.25, l__HumanoidRootPart__7.CFrame.lookVector * 99, "rbxassetid://6595288984", 0.075, Color3.new(255, 255, 255), "rbxassetid://260430079", math.random(9, 11) / 10, math.random(9, 11) / 10);
			if 0 <= 1 then
				if v63 < 15 then

				else
					break;
				end;
			elseif 15 < v63 then

			else
				break;
			end;
			v63 = v63 + 1;		
		end;
	end));
	wait(0.7);
	l__Transparency__12:FireServer(l__Stand__10.headd.Head.MAD, 1);
	l__Transparency__12:FireServer(l__Stand__10.headd.Head.Normal, 0);
	u1 = false;
	l__Humanoid__6.WalkSpeed = 16;
	l__Humanoid__6.WalkSpeed = 25;
	wait(4);
	u45 = false;
end;
mouse.Button1Down:connect(function()
	if l__Torso__35.Anchored == true then
		return;
	end;
	if l__Disabled__15.Value == true then
		return;
	end;
end);
mouse.KeyDown:connect(function(p4)
	if l__Torso__35.Anchored == true then
		return;
	end;
	if l__Disabled__15.Value == true then
		return;
	end;
	if p4 == "e" then
		skyscream();
	end;
	if p4 == "r" then
		manifestpunch();
	end;
	if p4 == "t" then
		test();
	end;
	if p4 == "y" then
		normal();
	end;
end);
local l__Damage__48 = l__ReplicatedStorage__1.Damage;
function hito(p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17)
	if l__Disabled__15.Value == true then
		return;
	end;
	local v64, v65, v66 = pairs(workspace:GetChildren());
	while true do
		local v67, v68 = v64(v65, v66);
		if v67 then

		else
			break;
		end;
		if p5.Anchored == true then
			return;
		end;
		if v68:FindFirstChild("Humanoid") then
			if v68:FindFirstChild("HumanoidRootPart") then
				if v68 ~= l__Character__5 then
					if (v68:FindFirstChild("HumanoidRootPart").Position - p5.Position).magnitude < p7 then
						if v68:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p5.Anchored then
								return;
							end;
							local l__HumanoidRootPart__69 = v68:FindFirstChild("HumanoidRootPart");
							l__Damage__48:FireServer(v68:FindFirstChild("Humanoid"), p6, p8, p10, p11, p12, p13, p14, p15, p16, p17);
							local v70 = Instance.new("StringValue");
							v70.Name = "alabo";
							v70.Parent = l__HumanoidRootPart__69;
							delay(p9, function()
								v70:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;
		if v68:FindFirstChild("Stand") then
			if v68.Stand:FindFirstChild("Stand Torso") then
				if v68 ~= l__Character__5 then
					if v68 ~= l__Character__5[l__Stand__10.Name] then
						if (v68.Stand:FindFirstChild("Stand Torso").Position - p5.Position).magnitude < p7 then
							if v68:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
								if p5.Anchored then
									return;
								end;
								local l__HumanoidRootPart__71 = v68:FindFirstChild("HumanoidRootPart");
								l__Damage__48:FireServer(v68:FindFirstChild("Humanoid"), p6, p8, p10, p11, p12, p13, p14, p15, p16, p17);
								local v72 = Instance.new("StringValue");
								v72.Name = "alabo";
								v72.Parent = l__HumanoidRootPart__71;
								delay(p9, function()
									v72:Destroy();
								end);
							end;
						end;
					end;
				end;
			end;
		end;	
	end;
end;
local l__Knock__49 = l__ReplicatedStorage__1.Knock;
function hito2(p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30)
	if l__Disabled__15.Value == true then
		return;
	end;
	local v73, v74, v75 = pairs(workspace:GetChildren());
	while true do
		local v76, v77 = v73(v74, v75);
		if v76 then

		else
			break;
		end;
		if p18.Anchored == true then
			return;
		end;
		if v77:FindFirstChild("Humanoid") then
			if v77:FindFirstChild("HumanoidRootPart") then
				if v77 ~= l__Character__5 then
					if (v77:FindFirstChild("HumanoidRootPart").Position - p18.Position).magnitude < p20 then
						if v77:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p18.Anchored then
								return;
							end;
							local l__Humanoid__78 = v77:FindFirstChild("Humanoid");
							local l__HumanoidRootPart__79 = v77:FindFirstChild("HumanoidRootPart");
							l__Damage__48:FireServer(l__Humanoid__78, p19, p21, p23, p24, p25, p26, p27, p28, p29, p30);
							l__Knock__49:FireServer(l__Humanoid__78);
							local v80 = Instance.new("StringValue");
							v80.Name = "alabo";
							v80.Parent = l__HumanoidRootPart__79;
							delay(p22, function()
								v80:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;
		if v77:FindFirstChild("Stand") then
			if v77.Stand:FindFirstChild("Stand Torso") then
				if v77 ~= l__Character__5 then
					if v77 ~= l__Character__5[l__Stand__10.Name] then
						if (v77.Stand:FindFirstChild("Stand Torso").Position - p18.Position).magnitude < p20 then
							if v77:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
								if p18.Anchored then
									return;
								end;
								local l__Humanoid__81 = v77:FindFirstChild("Humanoid");
								local l__HumanoidRootPart__82 = v77:FindFirstChild("HumanoidRootPart");
								l__Damage__48:FireServer(l__Humanoid__81, p19, p21, p23, p24, p25, p26, p27, p28, p29, p30);
								l__Knock__49:FireServer(l__Humanoid__81);
								local v83 = Instance.new("StringValue");
								v83.Name = "alabo";
								v83.Parent = l__HumanoidRootPart__82;
								delay(p22, function()
									v83:Destroy();
								end);
							end;
						end;
					end;
				end;
			end;
		end;	
	end;
end;
local l__Damage24__50 = l__ReplicatedStorage__1.Damage24;
function hito3(p31, p32, p33, p34, p35, p36, p37, p38, p39, p40, p41, p42, p43)
	if l__Disabled__15.Value == true then
		return;
	end;
	local v84, v85, v86 = pairs(workspace:GetChildren());
	while true do
		local v87, v88 = v84(v85, v86);
		if v87 then

		else
			break;
		end;
		if p31.Anchored == true then
			return;
		end;
		if v88:FindFirstChild("Humanoid") then
			if v88:FindFirstChild("HumanoidRootPart") then
				if v88 ~= l__Character__5 then
					if (v88:FindFirstChild("HumanoidRootPart").Position - p31.Position).magnitude < p33 then
						if v88:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
							if p31.Anchored then
								return;
							end;
							local l__Humanoid__89 = v88:FindFirstChild("Humanoid");
							local l__HumanoidRootPart__90 = v88:FindFirstChild("HumanoidRootPart");
							l__Damage24__50:FireServer(l__Humanoid__89, p32, p34, p36, p37, p38, p39, p40, p41, p42, p43);
							l__Knock__49:FireServer(l__Humanoid__89);
							local v91 = Instance.new("StringValue");
							v91.Name = "alabo";
							v91.Parent = l__HumanoidRootPart__90;
							delay(p35, function()
								v91:Destroy();
							end);
						end;
					end;
				end;
			end;
		end;
		if v88:FindFirstChild("Stand") then
			if v88.Stand:FindFirstChild("Stand Torso") then
				if v88 ~= l__Character__5 then
					if v88 ~= l__Character__5[l__Stand__10.Name] then
						if (v88.Stand:FindFirstChild("Stand Torso").Position - p31.Position).magnitude < p33 then
							if v88:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
								if p31.Anchored then
									return;
								end;
								local l__Humanoid__92 = v88:FindFirstChild("Humanoid");
								local l__HumanoidRootPart__93 = v88:FindFirstChild("HumanoidRootPart");
								l__Damage24__50:FireServer(l__Humanoid__92, p32, p34, p36, p37, p38, p39, p40, p41, p42, p43);
								l__Knock__49:FireServer(l__Humanoid__92);
								local v94 = Instance.new("StringValue");
								v94.Name = "alabo";
								v94.Parent = l__HumanoidRootPart__93;
								delay(p35, function()
									v94:Destroy();
								end);
							end;
						end;
					end;
				end;
			end;
		end;	
	end;
end;
l__ReplicatedStorage__1.BerserkClient.OnClientEvent:connect(function()
	game.Lighting.Ambient = Color3.fromRGB(0, 0, 122);
	game.Lighting.Berserk.Enabled = true;
	l__Humanoid__6.WalkSpeed = 4;
	l__Humanoid__6:SetStateEnabled(3, false);
	wait(2.5);
	l__Humanoid__6.WalkSpeed = 16;
	l__Humanoid__6:SetStateEnabled(3, true);
	game.Lighting.Ambient = Color3.fromRGB(150, 150, 150);
	game.Lighting.Berserk.Enabled = false;
end);
local l__Death__51 = l__ReplicatedStorage__1.Death;
l__Humanoid__6.HealthChanged:connect(function()
	if l__Humanoid__6.Health < 1 then
		l__Humanoid__6:SetStateEnabled(3, false);
		l__Humanoid__6:SetStateEnabled(15, false);
		l__Death__51:FireServer(false);
	end;
end);
local l__Knocked__52 = l__ReplicatedStorage__1.Knocked;
local l__GetUp__53 = l__ReplicatedStorage__1.GetUp;
l__ReplicatedStorage__1.KnockClient.OnClientEvent:connect(function(p44)
	if l__Character__5.Block.Value == true then
		return;
	end;
	l__Knocked__52:FireServer();
	l__Humanoid__6:SetStateEnabled(3, false);
	wait(1.25);
	if l__Humanoid__6.Health >= 1 then
		l__GetUp__53:FireServer();
		l__Humanoid__6:SetStateEnabled(3, true);
	end;
end);
local l__SCRTransparency2__54 = l__ReplicatedStorage__1.SCRTransparency2;
function transparency()
	l__SCRTransparency2__54:FireServer();
end;
if l__LocalPlayer__4.Data.Stand.Value == 999912 then
	transparency();
end;
