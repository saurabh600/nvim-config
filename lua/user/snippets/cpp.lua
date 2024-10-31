local M = {}

M.code = [[
#ifdef SAURABH600
#include <header.hpp>
#else
#include <bits/stdc++.h>
using namespace std;
#define debug(...) 42
#endif

typedef long long ll;
typedef long double ld;

#define all(x) begin(x), end(x)
#define rall(x) rbegin(x), rend(x)

using vi = vector<ll>;
using pii = pair<ll, ll>;

void solve() {{{}
}}

signed main() {{
  cin.tie(0)->sync_with_stdio(false);
  cout << fixed << setprecision(9);
  ll tests = 1;
  cin >> tests;
  while (tests--) solve();
  return 0;
}}
]]

M.pbds = [[
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>
using namespace __gnu_pbds;

template <class T, class Cmp = less<>>
using ordered_set = tree<T, null_type, Cmp, rb_tree_tag, tree_order_statistics_node_update>;
// X.find_by_order(k) return kth element. 0 indexed.
// X.order_of_key(k) returns count of elements strictly less than k.
]]

M.delxy = [[
const int dx[8] = {{1, 0, -1, 0, 1, 1, -1, -1}};
const int dy[8] = {{0, 1, 0, -1, -1, 1, -1, 1}};
]]

return M
