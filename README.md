MultiPoolMiner dev versions
https://github.com/MultiPoolMiner/MultiPoolMiner

## Update 20.07.2019
I do no longer have the permission to commit pull requests on the original repository @ https://github.com/MultiPoolMiner/MultiPoolMiner.
For this reason I will exclusively maintain the code base in my own repository (https://github.com/UselessGuru/MultiPoolMiner) until further notice.

**Please report issues regarding new MPM versions exclusively in my own repository.**

Download link:
https://github.com/MultiPoolMiner/MultiPoolMiner/archive/Version-3.4.5.zip

Please also report if all is working fine - only so I can know that we get rid of all the bugs.

## Changelog Version 3.4.5

## Core changes
- Added config parameter '-DisableEstimateCorrection'; reduce the algo price by a correction factor (actual_last24h / estimate_last24h) to counter pool overestimated prices
- Changed funtion Get-EquihasPers to Get-AlgoCoinPers & EquihashPers.txt to AlgoCoinPers.txt
- List pool names being queried for pricing information
- Use only configured devices when API becomes available
- Workround when module 'ThreadJob' cannot be loaded: use normal 'Start-Job'

#### Miner changes
- Added AMD-SgminerFancyIX_v0.6.0.0; support for Allium, Argon2Ddyn, Lyra2v3, Lyra2z, Lyra2zz, MTP, Phi2, X22i & X25x
- Added NVIDIA-CcminerBMW512; support for BMW512
- Fixed AMD-SgminerFancyIX_v0.6.0.0; algorithm Argon2d was broken
- Fixed AMD_NVIDIA-PhoenixminerEthash_v4.2c, does not work with AMD driver versions 2841.5, 2841.19 or 2906.8
- Fixed AMD-TeamRed_v0.5.5; enabled detection of failed GPUs
- Fixed NVIDIA-CcminerMTP_v1.1.23; requires CUDA 10.1.00 or higher
- Fixed WarmupTime for Sgminer*; allow up to 90 seconds to build binaries
- Updated AMD_CPU_NVIDIA-NanoMiner_v1.5.2; support for Cuckarood29 and RandomHash (CPU only), added Ethash binaries for AMD Radeon RX 5700 and AMD Radeon RX 5700 XT cards
- Updated AMD_NVIDIA-BMiner_v15.7.2; support for Cuckarood29
- Updated AMD_NVIDIA-Gminer_v1.52; support for Cuckarood29
- Updated AMD_NVIDIA-lolMiner_v0.85; removed 'Equihash' from its name 'cause it does non Equihash algos as well
- Updated AMD-SRBMinerCryptonight_v1.9.1
- Updated AMD-WildRig_v0.18.0; suppport for GltGlobalHash
- Updated CPU-Jayddee_v3.9.6.1; crash mining Hodl with aes-sse42
- Updated NVIDIA-CcminerKlausT_v8.25
- Updated NVIDIA-CcminerZenemy_v2.1
- Updated NVIDIA-NBMiner_v23.3; support for Cuckarood29
- Updated NVIDIA-TTMiner_v2.2.6; support for Cuckarood29


#### Pool changes
- Fixed BlockMasters; did not return any objects
- Implement workaround for Zpool(Coins) anti-DDoS protect (pool allows only 6 API calls per minute)
- Nicehash: Use API v2 (new Nicehash)
- Support for new config parameter '-DisableEstimateCorrection'

#### Balances changes
- Implement workaround for Zpool(Coins) anti-DDoS protect (pool allows only 6 API calls per minute)
- Nicehash: Request API v1 (old Nicehash) & v2 (Nicehash)

## Changelog Version 3.4.4

#### Core changes
- Enabled default WarmupTime for all miners
- Fixed dashboard banner information when benchmarking
- Pool balances: re-request pool balances when outdated
- Web dashboard: Add 'Last update' to balances

#### Miner Changes
- Fixed NVIDIA-CcminerRfv2_v1.0.2; device selection was broken
- Fixed NVIDIA-Ewbf2Equihash_v0.6; device selection was broken
- Fixed NVIDIA-NBMiner_v23.3; device enumeration was broken
- Fixed NVIDIA-Zjazz_v1.2; device selection was broken
- Updated AMD_NVIDIA-Gminer_v1.50; removed 'Equihash' from its name 'cause it does non Equihash algos as well
- Updated AMD_NVIDIA-NanoMiner_v1.4.1
- Updated AMD-TeamRed_v0.5.5; support for Cuckatoo31, CryptonightHeavyHaven, CryptonightHeavyTube, CryptonightHeavy & MTP algorithm
- Updated CPU-Jayddee_v3.9.5.2; fixes Skein2 crash
- Updated NVIDIA-CcminerMTP_v1.1.23
- Updated NVIDIA-CryptoDredge_v0.20.2
- Updated NVIDIA-MiniZEquihash_v1.4o; support for EquihashR12540

#### Pool files
- use common code base
- PhiPhiPool no longer offers auto-conversion to BTC

#### Pool Balances files
- use common code base
- PhiPhiPool no longer offers auto-conversion to BTC

## Changelog Version 3.4.3

#### Core Changes
- Background jobs are faster (using https://www.powershellgallery.com/packages/ThreadJob/2.0.1)
- Fixed miner APIs to be compatible with PWSH 6.2.0
- Fixed miner APIs; fixed crashing miners when miner windows are hidden (https://github.com/MultiPoolMiner/MultiPoolMiner/issues/2345#issuecomment-506898390)

#### Miner Changes
- Fixed AMD_CPU_NVIDIA-FireiceCryptonight_v2.10.5; PlatformThreadsConfigFile naming was invalid
- Fixed AMD_NVIDIA-GminerEquihash_v1.47; EquihashR12540 is supported on AMD only
- Updated CPU-Jayddee_v3.9.5; disabled Skein2, seems to be broken (https://github.com/JayDDee/cpuminer-opt/issues/194)

## Changelog Version 3.4.2

#### Miner changes
- Updated NVIDIA-CcminerTrex_v0.12.1

## Changelog Version 3.4.1

#### Core changes
- Added parameter '-MinAccuracy'
- Added pool config items 'Region' & 'ExcludeRegion'

#### Miner changes
- Updated AMD-WildRig_v0.17.9
- Updated CPU-Jayddee_v3.9.4; support for Lyra2z330
- Updated NVIDIA-CcminerKlausT_v8.21modR18.ps1; support for Lyra2z330

#### Pool changes
- Fixed MiningPoolHubCoins; pool did not return any pool objects
- Removed Yiimp pool; closed since June 22nd 2019 (https://twitter.com/tpruvot)

#### Changes in Algorithms.txt
- Added EquihashR12540
- Added "zelcash":  "EquihashR12540"
- Changed "beam":  "EquihashR15050"
- Renamed Equihash1550 to EquihashR1550

## Changelog Version 3.4.0

### Breaking changes from 3.3.x
**Parameter '-UseDeviceNameForStatsFileNaming' is no longer valid**
**'-UseDeviceNameForStatsFileNaming:true will be enforced**
This will trigger all benchmarks to be re-executed (unless you were running MPM with '-UseDeviceNameForStatsFileNaming:true' already)

#### Core changes
- Added config item 'DevicePciOrderMapping' for configurations where PCI deviceID order does not match OpenCL deviceID order (see README)
- Added parameter '-DisableMinersWithDevFee'
- API: updated to version 0.95; added '/alldevices', '/allminers' & '/intervals'
- Fixed miners Claymore*, Gminer, lolMinerEquihash, Nanominer, SRBMinerCryptonight & Wildrig; device enumeration can now use mapping as configured by 'DevicePciOrderMapping' 
- Improved config file validation
- Parameters '-MinerName' and '-ExcludeMinerName' can be in one of the 3 forms: MinerBaseName e.g. 'AMD-TeamRed'; MinerBaseName_Version, e.g. 'AMD-TeamRed_v0.5.2' or MinerName, e.g. 'AMD-TeamRed_v0.5.2-1xEllesmere8GB'
- Removed code for '-UseDeviceNameForStatsFileNaming'
- Renamed parameter '-NoDevFeeMiners' to '-DisableDevFeeMining' to better reflect its function
- Rewrote interval & hashrate collector scheduler
- Start cmd files: Do not launch a second instance of SnakeTail.exe
- Web dashboard: Added column 'Status' to devices overview (available status: 'Disabled', 'Idle', 'Running (MinerName)', 'Benchmarking (MinerName)' & 'Failed'

#### Miner Changes
- Added CcminerRfv2; support for RainforestV2
- Fixed NVIDIA-CcminerZenemy_v2.00; invalid --devices0 parameter (https://github.com/MultiPoolMiner/MultiPoolMiner/issues/2339#issuecomment-495972633)
- Fixed AMD_NVIDIA-BMiner_v15.5.3 SSL for secondary algorithm
- Fixed NVIDIA-CcminerZenemy_v2.00; invalid --devices0 parameter (https://github.com/MultiPoolMiner/MultiPoolMiner/issues/2339#issuecomment-495972633)
- Fixed NVIDIA-MiniZEquihash_v1.3n5; added '--pers auto' for Equihash 1927 algo
- Renamed NVIDIA-CcminerZenemy_v2.00 to NVIDIA-CcminerZenemy_v20.0 (typo)
- Removed CPU-Cryply_v3.8.8.4; (moved to 'Deprecated' folder); CPU-Jayddee_v3.9.3.1 is newer and has no dev fee
- Updated AMD_CPU_NVIDIA-FireiceCryptonight_v2.10.5
- Updated AMD_NVIDIA-ClaymoreEthash_v14.7
- Updated AMD_NVIDIA-GminerEquihash_v1.47; support for Equihash 1255
- Updated AMD_NVIDIA-NanoMiner_v1.3.4
- Updated AMD-JCECryptonote_v0.33b18; changed API to XmRig
- Updated AMD-SRBMinerCryptonight_v1.9.0
- Updated AMD-TeamRed_v0.5.2
- Updated AMD-WildRig_v0.17.9; support for Blake2b-BTCC, Blake2b-Glt & Skein2
- Updated AMD-XmrigCryptonight_v2.14.4
- Updated CPU-Jayddee_v3.9.4; support for Lyra2rev3, Sha256q, Sonoa, Yespower, YespowerR16 & Yescryptr16
- Updated CPU-JCECryptonote_v0.33q; changed API to XmRig
- Updated CPU-XmrigCryptonight_v2.14.4
- Updated NVIDIA-CcminerMTP_v1.1.20
- Updated NVIDIA-CcminerTrex_v0.12.0; support for Honeycomb
- Updated NVIDIA-CryptoDredge_v0.20.1
- Updated NVIDIA-NBMiner_v23.3; fixed min. memory requirements (https://github.com/MultiPoolMiner/MultiPoolMiner/issues/2343#issuecomment-503419922)
- Updated NVIDIA-TTMiner_v2.2.5
- Updated NVIDIA-XmrigCryptonight_v2.14.4

#### Pool changes
- MiningPoolHubCoins: workaround for invalid MaxCoin host info in API (https://github.com/MultiPoolMiner/MultiPoolMiner/issues/2339#issuecomment-496887747)

## Changelog Version 3.3.0

#### New features
- Pre / Post miner command execution (https://github.com/MultiPoolMiner/MultiPoolMiner/issues/2305)
- Ability to set a minimum profit threshold, do not mine if mining earns less ('-ProfitabilityThreshold:n.nn' [Float])
- API port is configurable, default is 3999 ('-APIPort' [Int])
- Added support for miner-specific environment variable settings (e.g. SGMiner requires "GPU_FORCE_64BIT_PTR=0"), Note: this does NOT work for miner using the wrapper API
- Added support for persistent customized miner commands via config file (see readme for more information)- Better control over benchmark loops, number of hashrate samples per inveral is now configurable ('-HashRateSamplesPerInterval:10' [Int])
- Enhanced stat handling in web dashboard
- Global miner warmup time parameter ('-WarmupTime:30' [seconds]). During the first loop MPM will ignore non-responding API calls for the configured duration. An example for this are some miners that need time to compile the binaries
- Invalid share detection; miner get marked failed if the configured ratio of accepted / bad shares is exceeded ('-AllowedBadShareRatio:0' [Float])
- Make power usage and cost part of the calculation (optional); requires separate installation and configuration of HWiNFO64 (see ConfigHWiNFO64.pdf)
- Make '-ShowminerWindow' dynamic: Hide / show miner when parameter gets changed while MPM is running
- Web dashboard: Earnings / profit is now in first configured currency, e.g. $Currency EUR,BTC -> values shown are in EUR

#### Core changes
- Added columns 'Profit Bias' & 'Earning Bias' to 'Miners' / 'Active Miners' in Web dashboard
- Added exchange rates to Web dashboard (for currencies configured with '-currency')
- Added folder 'AlternateLogViewer'; experimental log viewer based on SnakeTail.exe
- Added more coin names to CoinNames.txt
- Added parameter '-Dashboard'
- Added parameter '-IgnorePowerCost'
- Added parameter '-ShowAllPoolBalances'
- Added parameter '-NoDevFeeMiners'
- Added 'CoinNames.txt' (Get-CoinName -CoinName), used in pool files
- Added 'EthashDAGSize.txt' (Get-EthashDAGSize -CoinName), used in pool files
- Added support for mBTC (milli BTC) as configurable currency
- Added support for persistent miner config via config file (see readme for more information)
- API: updated to version 0.92; added '/currentprofit'
- Balances: currency order matches '-Currency' values
- Changed parameter '-CalculatePowerCost' to '-MeasurePowerUsage'
- Changed parameter '-DisableDualMining' to '-SingleAlgoMining'
- Changed parameter '-HashRateSamplesPerMinute' to '-HashRateSamplesPerInterval'
- Changed parameter '-MinPoolWorker' to '-MinWorker', configurable per algorithm and pool (see readme)
- Changed parameter '-UseFastestMinerPerAlgoOnly' to '-UseMostProfitableMinerPerAlgoOnly' to better reflect its function
- Changed start files to use 'MININGRIG' variable
- Changed storage location for stat files, separate directories for 'HashRate', 'PowerUsage' and 'Profit' files
- Create separate pool objects for X16Rt algorithm variants 'Gincoin' and 'Veil'
- Fixed 'Wrapper' API; did not properly report hashrates and power usage
- Fixed algorithm mismatch: Bitcore & Timetravel10 are the same, Timetravel & Timetravel8 are the same, but different from Timetravel10
- Fixed hashrate formatting in Web dashboard when hasrate was less than 1 H/s
- Fixed parameters '-MinerName' and '-ExcludeMinerName' (regression of miner naming change introduced in 3.1.x)
- Fixed process priority for CPU miners (set to low priority)- Fixed unprofitable algorithms for '*-NiceHash' algo names
- Made column widths in miner overview dynamic
- Optimized benchmarking spped when CPU mining is enabled (do not gather pool stats as threaded jobs)
- Pool specific start batch files: Enable all supported algorithms by default
- Removed 'Bitcore' from UnprofitableAlgorithms.txt
- Removed support for Nicehash Excavator; reasons: development has been abandoned, miner was never the fastest
- Updated ConfigHWinfo64.pdf; added section for HWiNFO64 restart on driver crash
- Web dashboard: Added columns for 'Earning', 'PowerUsage' & 'Workers'
- Web dashboard: Fixed 'Wallet' information in 'Running Miners'
- Web dashboard: Show current profit in all configured currencies

#### Pool changes
- ZergPool(Coins): Support for solo / party mining (see readme for more information)

#### Miner changes
- Added AMD_NVIDIA-lolMinerEquihash_v0.81
- Added AMD_NVIDIA-NanoMiner_v1.3.2; support for Cuckaroo29
- Added AMD_NVIDIA-SgminerMTP_v0.1.1; support for MTP
- Added NVIDIA-CcminerDyn_v1.0.0; support for Argon2dDYN
- Added NVIDIA-NBMiner_v23.2hotfix; support for Bytom, Bytom&Ethash dual mining, Ethash, Cuckaroo29, Cuckaroo31 & Cuckoo29; disabled ethash, ClaymoreDual & Phoenix are approx 10% faster
- Added NVIDIA-ProgPoWminer_v.0.16
- Added NVIDIA-TTMiner_v2.2.4; support for LYRA2V3, PROGPOW, ProgPoWZ, ProgPoW092, UBQHASH & MTP
- Removed AMD-ClaymoreCryptonight_v11.3 (moved to 'Deprecated' folder); mines only unprofitable algos
- Removed AMD-MkxminerLyra2RE2_v3.10; it was for Lyre2RE2 only which is an unprofitable algo
- Removed AMD-SgminerLyra2RE2_v5.1.0; miner was incorrectly named, it was for Lyre2RE only which is an unprofitable algo
- Removed AMD-ZjazzPhi2_v0.92 (moved to 'Deprecated' folder); AMD-WildRig is much faster
- Removed CPU-ClaymoreCryptonight_v4.0 (moved to 'Deprecated' folder); mines only unprofitable algos
- Removed NVIDIA-CcminerDumax_v0.94 (moved to 'Deprecated' folder); outpaced by other miners in all algos
- Removed NVIDIA-CcminerLyra2RE2_v1.7.6r6 (moved to 'Deprecated' folder); outpaced by other miners in all algos
- Removed NVIDIA-CcminerLyra2z_v0.3.0 (moved to 'Deprecated' folder); outpaced by other miners in all algos
- Removed NVIDIA-CcminerNanashi_v2.2modr2 (moved to 'Deprecated' folder); outpaced by other miners in all algos
- Removed NVIDIA-CcminerSib_vx11ghost (moved to 'Deprecated' folder); outpaced by other miners in all algos
- Removed NVIDIA-CcminerSkunk_v2.2modr1 (moved to 'Deprecated' folder); outpaced by other miners in all algos
- Removed NVIDIA-CcminerXevan_v78 (moved to 'Deprecated' folder); replaced by NVIDIA-CcminerAlexis_v1.5
- Removed NVIDIA-CcminerXevan_cuda9 (moved to 'Deprecated' folder); replaced by NVIDIA-CcminerAlexis_v1.5
- Unified CPU-Cryply_v3.8.8.3 (no more separate miner files for the various CPU features)
- Unified CPU-Jayddee_v3.8.8.1 (no more separate miner files for the various CPU features)
- Updated AMD-SRBMinerCryptonight_v1.8.9; support for Cryptonight variants
- Updated AMD-JCECryptonote_v0.33b18
- Updated AMD-WildRig_v0.17.3; support for Glt-Astralhash, Glt-Jeonghash, Glt-Padihash, Glt-Pawelhash, Honeycomb, Rainforest, Sha256q, Sha256t, Xevan, WildKeccak & X25x, removed support for MTP
- Updated AMD-TeamRed_v0.5.1; support for X16r, X16s & X16rt
- Updated AMD-XmrigCryptonight_v2.14.1; support for Cryptonight/Gpu, Cryptonight/Half, Cryptonight/R & Cryptonight/Turtle
- Updated AMD_CPU_NVIDIA-FireiceCryptonight_v2.10.3; preserve existing config files, support CryptonightR & CryptonightRwz
- Updated AMD_NVIDIA-BMiner_v15.5.3; support for Cuckatoo31 (8GB cards on windows 7 & 8.x, Win10 requires 11GB), Cuckaroo29 for AMD
- Updated AMD_NVIDIA-ClaymoreEthash_v14.6
- Updated AMD_NVIDIA-EthminerEthash_v0.17.1
- Updated AMD_NVIDIA-GminerEquihash_v1.44; support for Equihash 1505, Cuckaroo29 (Grin), Cuckaroo29s (Swap), Cuckatoo31 (Grin) & Vds
- Updated AMD_NVIDIA-PhoenixminerEthash_v4.2c; WarmupTime single algo 30 sec, dual algo 45 sec
- Updated CPU-XmrigCryptonight_v2.14.1; support for Cryptonight/Gpu, Cryptonight/Half, Cryptonight/R & Cryptonight/Turtle
- Updated NVIDIA-CcminerKlausT_v8.21modR18; replaces NVIDIA-CcminerKlausT_vYescryptR16R32.V10
- Updated NVIDIA-CcminerMTP_v1.1.17 (No support for Nicehash MPT)
- Updated NVIDIA-CcminerMTPNicehash_v1.1.15 (support for Nicehash MPT)
- Updated NVIDIA-CcminerSuprMiner_v2.0.7; support for X16Rt
- Updated NVIDIA-CcminerTrex_v0.11.0; support for MTP, SHA256q, X16rt & X25x
- Updated NVIDIA-CcminerZenemy_v2.00 (previously NVIDIA-CcminerZealot)
- Updated NVIDIA-CryptoDredge_v0.19.1; support for Argon2d-DYN, Argon2CRDS, Argon2UIS, Cryptonightfast2, CryptonightSuperfast, Lyra2zz & X16rt, added MinMem parameter
- Updated NVIDIA-MiniZEquihash_v1.3n5, support for Equihash96_5, Equihash150_5 and Equihash192_7
- Updated NVIDIA-XmrigCryptonight_v2.14.1; support for Cryptonight/Gpu, Cryptonight/Half, Cryptonight/R & Cryptonight/Turtle

#### Pool changes
- Changed *Coins pools; added support for Ethash2gb/3gb variants
- Changed list of parameters that are passed to the miner files ($Config added); fixes issue NiceHash not recognizing internal wallet
- Changed NLPools* URL to https://
- Fixed stats for multi-algo currencies, e.g. GlobalToken
- Fixed MiningPoolHubCoins; invalid check for $Config.UserName, fixed stat file naming
- Fixed MiningPoolHub / MiningPoolHubCoins; Ethash algo not working, regression from 3.3.0 Beta 3
- MiningPoolHub(Coins): Change message 'no wallet address specified' to 'no username specified'
- Re-Added ZergPool & ZergPoolCoins
- Removed StarPool(Coins)

## Changelog Version 3.2.0

#### New features
- Added parameter '-PoolBalancesUpdateInterval'
- Pool fee is now part of the profitability calculation
- Separate section 'Wallets' in config file, BTC/Wallet gets automatically moved to 'Wallets' on start

#### Core changes
- Added 'Bitcoin' to the list of unprofitable algos
- Added 'CryptonightDark', 'CryptonightFreeHaven', 'CryptonightRed', 'YescryptR24' and 'YescryptR32' to Algorithms.txt
- Added EquihashPers.txt to store Equihash 'pers' values
- Added 'poolbalancesdata' to web API

- Changed APIs files; simplified algo name detection
- Changed defaults parameter values for fresh installations; enabled 'CreateMinerInstancePerDeviceModel' and 'UseDeviceNameForStatsFileNaming' in config file
- Changed exchange rate currency name to be displayed in upper case
- Changed list of default algos in start batch files:
  - Start-MiningPoolHub: removed lyra2re2
  - Start_Zpool: aded hex,x16r,x16s,x17,x22i; removed lyra2re2

- Enhancement: Better detection of failed miners (some crashed miners are dead, but may still be found by their processId)
- Enhancement: Changed method to launch miner executables when '-ShowMinerWindows:true'; will no longer steal focus (requires [MPM-Dir]\CreateProcess.cs file)
- Enhancement: Loading pool data converted to job; shortens loop time

- Fixed 'No pools available' message when no wallet was explicitly configured in the config file
- Fixed DeviceID enumeration when main screen is connected to onboard Intel HD Graphics
- Fixed donation addresses
- Fixed error displaying Pool balances, but no wallet address / username was configured
- Fixed 'ExcludeDeviceName; before it would not exclude more than one device
- Fixed generated miner objects; pool element is of type [array]
- Fixed MPM Error message when '-MinerName' was empty
- Fixed MPM starts mining if only one miner is available
- Fixed pool balances display formatting (works with any regional setting)
- Fixed rescanning devices when reconfiguring 'DeviceName' or 'ExcludeDeviceName' while MPM is running

- Miner overview: Sort algorithms requiring benchmarking alphabetically; print either 'Benchmark pending' or 'Benchmark in progress' depending on status

- Removed requirement for CpuFeatureDetector.exe, replaced with Get-CpuId (Include.psm1)

- Start batch files, 'UseFastestMinerPerAlgoOnly' is now enabled by default

- Updated README: NiceHash pool configuration details

#### Miner changes

- Added AMD-JCECryptonote_v0.33b18
- Added CPU-JCECryptonote_v0.33j
- Added NVIDIA-GminerEquihash_v1.13
- Added NVIDIA-MiniZEquihash_v1.0i

- Changed config file handling of *-XmrigCryptonight_* miners
- Changed NVIDIA-CcminerTpruvot_v2.3; removed monero and graft algos

- Disabled some AMD miners because they need special environment variable values (which is currently not supported by MPM, see https://github.com/MultiPoolMiner/MultiPoolMiner/issues/2208#issuecomment-432696257)
  They are all in the folder 'RequireNewLancher_Amd', feel free to move them to 'MinersLegacy'. If they work that's fine :-)
  - AMD-MkxminerLyra2RE2_v3.10
  - AMD-Sgminer_v5.6.1
  - AMD-SgminerAvermore_v1.4.1
  - AMD-SgminerKL_v1.0.9
  - AMD-SgminerLyra2RE2_v5.1.0
  - AMD-SgminerXevan_v5.5.0

- Enabled AMD_NVIDIA-EminerEthash_v0.6.1rc2 dev fee

- Fixed AMD_NVIDIA-ClaymoreEthash_v11.9; removed double algo in miner name (when '-UseDeviceNameForStatsFileNaming:true' and single mining)

- Fixed AMD-XmrigCryptonight_v2.8.6 algo filtering based on minimum memory (CryptonightHeavy requires 4GB)
- Fixed CPU-ClaymoreCryptonight_v4.0; api port is now in the 4000 range as all other miners
- Fixed CPU-CryplyAvx_v3.8.8.3 Sha256 hash
- Fixed CPU-CryplyAvx2_v3.8.8.3 Sha256 hash
- Fixed CPU-CryplyAvx2Sha_v3.8.8.3 Sha256 hash
- Fixed CPU-CryplySse42_v3.8.8.3 Sha256 hash
- Fixed CPU-CryplySse42Sha_v3.8.8.3 Sha256 hash

- Merged API files for XmRig & XmRigCfgFile

- Reported graphics memory is rounded to the nearest 1/4 GB (Include.psm1/Get-Device)

- Updated AMD-CastXmrVegaCryptonight_v1.66; support for algo CryptonightXfh, added support for Baffin chipset
- Updated AMD-SgminerKL_v1.0.9
- Updated AMD-SRBMinerCryptonight_v1.7.4
- Updated AMD-TeamRed_v0.4.2; support for CryptonightR
- Updated AMD-WildRig_v0.14.0beta; support for Dedal, Lyra2v3, Lyra2vc0ban & X21s algo
- Updated AMD-XmrigCryptonight_v2.8.6
- Updated AMD_NVIDIA-lolMinerEquihash_v0.6; support for Equihash 210/9 algo
- Updated AMD_NVIDIA-PhoenixminerEthash_v4.0b; (support for dual mining Blake2s with AMD cards is not working in 4.0b!)
- Updated NVIDIA-CcminerAlexis_v1.5; requires CUDA 10.0.0
- Updated NVIDIA-CcminerTrex_v0.8.9; support for Dedal, Geek, GltAstralHash, GltJeongHash, GltPadiHash, GltPawelHash & X21s algo
- Updated NVIDIA-CcminerKlausT_vYescryptR16R32.V7
- Updated NVIDIA-CcminerTpruvot_v2.3; requires CUDA 10.0.0, support for Exosis algo
- Updated NVIDIA-CcminerZealot_v1.28; remove support for Renesis algo
- Updated NVIDIA-CryptoDredge_v0.15.1; support for algo Dedal, Lyra2vc0banHash, Lyra2V3, MTP, Pipe & X21s, requires min. 5GB of VRAM
- Updated NVIDIA-ExcavatorNHMP_v1.5.14a

#### Pool changes
- Added *Coins variants for pools that support it
- Added Ravenminer & RavenminerEU
- Added StarPool & StarPoolCoins
- Added Zpool region NA (USA)

- Fixed BlockMasters.ps1; returned empty data in some scenarios
- Fixed MiningPoolHub(Coins); changed hosts for Equihash-BTG
- Fixed NLPool; was using wrong host address (Zpool)
- Fixed PhiPhiPool URLs, added regions "EU" and "ASIA"
- Fixed Yiimp balance (message 'no wallet specified')

- Pool queries are less likely to fail (try 3 times before giving up)
- Pool objects contain fee information, will be used for profit calculation

#### New algorithms in Algorithms.txt
- Dedal
- Equihash 210/9
- Geek
- GltAstralHash
- GltJeongHash
- GltPadiHash
- GltPawelHash
- Lyra2v3
- Lyra2vc0banHash
- MTP
- Pipe
- X18
- X21s

#### Other changes / Fixes
- Get-Binaries: Fixed compatibility with miner filename change introduced in 3.1.0
- Updated README: NiceHash pool configuration details
