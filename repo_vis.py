import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import os

agents = [4, 8, 16, 32, 64, 128, 256, 512, 1024]
collsion_avoidance = []
number_of_deadlocks = []
constraint_violations = []
compute_time = []

for a in agents:
    csv = pd.read_csv(f'./repo_data/Maze_{a}_agents.csv')
    collsion_avoidance.append(csv['collision_avoidance'].mean())
    number_of_deadlocks.append(csv['number_of_deadlocks'].sum())
    constraint_violations.append(csv['constraint_violations'].sum())
    compute_time.append(csv['compute_time'].mean())

def plot_collision_avoidance(agents, data, env='Empty'):
    plt.figure(figsize=(8, 5))
    plt.plot(agents, data, '-o', color='red', label='MAICBF')
    plt.xscale('log', base=2) 
    plt.xticks(agents, agents) 
    plt.grid(True, which="both", ls="--", alpha=0.5) 
    plt.xlabel('Number of Agents', fontweight='bold')
    plt.ylabel('Collision Avoidance (%)', fontweight='bold')
    plt.yticks(np.arange(20, 101, 20)) 
    plt.title(f'{env} environment')
    plt.ylim(20, 105)
    plt.xlim(7, 1100)
    plt.tight_layout() 
    plt.savefig(f'./repo_vis/{env}_collision_avoidance.png')

def plot_deadlocks(agents, data, env='Empty'):
    plt.figure(figsize=(8, 5))
    plt.plot(agents, data, '-o', color='red', label='MAICBF')
    plt.xscale('log', base=2) 
    plt.xticks(agents, agents) 
    plt.grid(True, which="both", ls="--", alpha=0.5) 
    plt.xlabel('Number of Agents', fontweight='bold')
    plt.ylabel('Avg. Number of Deadlocks', fontweight='bold')
    plt.yticks(np.arange(0, 201, 50)) 
    plt.title(f'{env} environment')
    plt.ylim(0, 210)
    plt.xlim(7, 1100)
    plt.tight_layout() 
    plt.savefig(f'./repo_vis/{env}_deadlocks.png')

def plot_constraint_violations(agents, data, env='Empty'):
    plt.figure(figsize=(8, 5))
    plt.plot(agents, data, '-o', color='red', label='MAICBF')
    plt.xscale('log', base=2) 
    plt.xticks(agents, agents) 
    plt.grid(True, which="both", ls="--", alpha=0.5) 
    plt.xlabel('Number of Agents', fontweight='bold')
    plt.ylabel('Input Constraint Violations', fontweight='bold')
    plt.yticks(np.arange(0, 501, 100))
    plt.title(f'{env} environment')
    plt.ylim(0, 530)
    plt.xlim(7, 1100)
    plt.tight_layout() 
    plt.savefig(f'./repo_vis/{env}_constraint_violations.png')

def plot_compute_time(agents, data, env='Empty'):
    plt.figure(figsize=(8, 5))
    plt.plot(agents, data, '-o', color='red', label='MAICBF')
    plt.xscale('log', base=2) 
    plt.xticks(agents, agents) 
    plt.grid(True, which="both", ls="--", alpha=0.5) 
    plt.xlabel('Number of Agents', fontweight='bold')
    plt.ylabel('Computational Time (s)', fontweight='bold')
    plt.yticks(np.arange(0, 41, 10)) 
    plt.title(f'{env} environment')
    plt.ylim(0, 43)
    plt.xlim(7, 1100)
    plt.tight_layout() 
    plt.savefig(f'./repo_vis/{env}_compute_time.png')

if not os.path.exists('./repo_vis'):
    os.makedirs('./repo_vis')
plot_collision_avoidance(agents, collsion_avoidance, env='Maze')
plot_deadlocks(agents, number_of_deadlocks, env='Maze')
plot_constraint_violations(agents, constraint_violations, env='Maze')
plot_compute_time(agents, compute_time, env='Maze')

collision_avoidance.clear()
number_of_deadlocks.clear()
constraint_violations.clear()
compute_time.clear()
for a in agents:
    csv = pd.read_csv(f'./repo_data/Empty_{a}_agents.csv')
    collsion_avoidance.append(csv['collision_avoidance'].mean())
    number_of_deadlocks.append(csv['number_of_deadlocks'].sum())
    constraint_violations.append(csv['constraint_violations'].sum())
    compute_time.append(csv['compute_time'].mean())

plot_collision_avoidance(agents, collsion_avoidance, env='Empty')
plot_deadlocks(agents, number_of_deadlocks, env='Empty')   
plot_constraint_violations(agents, constraint_violations, env='Empty')
plot_compute_time(agents, compute_time, env='Empty')