within Annex60.Fluid;
package FMI "Package with base classes that facilitate exporting models as an FMU"
  extends Modelica.Icons.Package;


  annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains blocks that serve as containers for exporting
models from <code>Annex60.Fluid</code> as a Functional Mockup Unit (FMU).
</p>
<p>
This allows using models from <code>Annex60.Fluid</code>, add them
to a block that only has input and output signals, but no acausal connectors,
and then export the model as a Functional Mockup Unit.
Models can be individual models or systems that are composed of various
models.
For more information, see the
<a href=\"modelica://Annex60.Fluid.FMI.UsersGuide\">User's Guide</a>.
</p>
</html>"),
  Icon(graphics={Bitmap(extent={{-90,-86},{84,88}}, fileName=
            "modelica://Annex60/Resources/Images/Fluid/FMI/FMI_icon.png")}));
end FMI;
