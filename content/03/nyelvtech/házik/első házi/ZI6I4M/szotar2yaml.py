from xml.parsers.expat import ExpatError
import xmltodict
import yaml

"""
Program ami YAML-lé alakítja
a betáplált XML fájlt.
"""

def xml2yaml(xml: str):
	"""
	Converst any given string with xml data to yaml.
	"""
	try:
		data = xmltodict.parse(xml)
	except ExpatError:
		raise ValueError("Input is not a valid XML.")

	return yaml.dump(
        data,
        sort_keys=False,
        allow_unicode=True,
        default_flow_style=False,
    )

if __name__ == "__main__":
	inputFilePath = "szotar.dtd.xml"
	with open(inputFilePath, "r") as file:
		content = file.read()
	
	output = xml2yaml(content)
	
	outputFilePath = "szotar.yaml"
	with open(outputFilePath, "w") as file:
		file.write(output)