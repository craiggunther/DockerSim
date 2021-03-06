//
// This module defines the overheads parameters for a RedHatEnterprise_Virtualization v.2.2 on a node with OS Linux
//
// @author Gabriel Gonz&aacute;lez Casta&ntilde;&eacute
// @date 2014-12-12
//


package icancloud.src.Virtualization.Hypervisor.Hypervisors.HypervisorPreset;

import icancloud.src.Virtualization.Hypervisor.Hypervisors.MainHypervisor;

module RedHatEnterprise_Virtualization2_2_Linux extends MainHypervisor
{
    parameters:
        @class("Hypervisor");
        @display("i=energy/Hypervisor_40;p=208,236");
    
    	// Scheduler
            string cpuScheduler = default("H_CPU_SCHED_FIFO");
    		string netScheduler = default("H_NET_SCHED_FIFO");
    		string memScheduler = default("H_MEM_SCHED_FIFO");
    		string storageScheduler = default("H_STORAGE_SCHED_FIFO");
		
		// Overhead
			// The memory overhead is the amount of memory that the hypervisor needs at memory (MB)
			// The computing overhead is the average percent of overload that cpu operations need to me performed
			// The io overhead is the average percent of overload that io operations need to me performed
			// The netowrk overhead is the average percent of overload that network operations need to me performed
			 double memoryOverhead_MB = default (512.0);
			 double computingOverhead = default(43.77);
			 double ioOverhead = default(3.08);
			 double networkOverhead = default(23.76);
}