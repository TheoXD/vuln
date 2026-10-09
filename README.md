# vuln

Vulnerable Solidity contracts for testing solbend. Nothing here is safe to deploy.

## main

| Contract | What it shows |
|---|---|
| `contracts/BankDAO.sol` | the DAO bug: the balance is cleared after the external call |
| `contracts/BankCEI.sol` | the fix: the balance is cleared before the call (checks-effects-interactions) |
| `contracts/BankGuarded.sol` | the other fix: a reentrancy lock on every entry point |

## Branches

218 branches, one known-vulnerable contract each, named `<dataset>/<category>/<contract>`. Each holds the contract under `contracts/`, a README with its source and labels, and the dataset's license. The full list is in [BRANCHES.md](BRANCHES.md).

| Dataset | Category | Branches |
|---|---|---|
| Not So Smart Contracts | bad_randomness | 1 |
| Not So Smart Contracts | denial_of_service | 2 |
| Not So Smart Contracts | forced_ether_reception | 1 |
| Not So Smart Contracts | honeypots | 6 |
| Not So Smart Contracts | incorrect_interface | 2 |
| Not So Smart Contracts | integer_overflow | 1 |
| Not So Smart Contracts | race_condition | 1 |
| Not So Smart Contracts | reentrancy | 5 |
| Not So Smart Contracts | unchecked_external_call | 1 |
| Not So Smart Contracts | unprotected_function | 2 |
| Not So Smart Contracts | variable-shadowing | 1 |
| Not So Smart Contracts | wrong_constructor_name | 2 |
| SmartBugs curated | access_control | 18 |
| SmartBugs curated | arithmetic | 15 |
| SmartBugs curated | bad_randomness | 8 |
| SmartBugs curated | denial_of_service | 6 |
| SmartBugs curated | front_running | 4 |
| SmartBugs curated | other | 3 |
| SmartBugs curated | reentrancy | 31 |
| SmartBugs curated | short_addresses | 1 |
| SmartBugs curated | time_manipulation | 5 |
| SmartBugs curated | unchecked_low_level_calls | 52 |
| SolidiFI benchmark | reentrancy | 50 |
