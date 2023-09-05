# Remove the setup_requires section since it
# requies conan which we don't need for conda(-forge) builds
import toml

t = toml.load('pyproject.toml')

t['build-system']['requires'] = [
    r
    for r in t['build-system']['requires']
    if not r.startswith('conan')
]

with open('pyproject.toml', 'w') as f:
    toml.dump(t, f)
