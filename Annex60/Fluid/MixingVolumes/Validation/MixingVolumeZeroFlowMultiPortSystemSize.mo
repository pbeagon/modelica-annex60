within Annex60.Fluid.MixingVolumes.Validation;
model MixingVolumeZeroFlowMultiPortSystemSize
  "Model for checking the size of algebraic loops generated by the mixing volume implementation"
  extends Modelica.Icons.Example;
  package Medium = Annex60.Media.Water;
  Annex60.Fluid.Sources.Boundary_pT bou(
    redeclare package Medium = Medium,
    use_T_in=true,
    nPorts=7) "Boundary"
    annotation (Placement(transformation(extent={{10,10},{-10,-10}},
        rotation=0,
        origin={50,40})));
  Modelica.Blocks.Sources.SawTooth
                                doubleRamp(period=1, amplitude=1e-6)
    "Step function for mass flow source"
    annotation (Placement(transformation(extent={{-80,80},{-60,100}})));
  Modelica.Blocks.Sources.Cosine cosine1(freqHz=1, offset=273.15)
    annotation (Placement(transformation(extent={{100,20},{80,40}})));
  Annex60.Fluid.Movers.BaseClasses.IdealSource idealSource1(
    redeclare package Medium = Medium,
    control_m_flow=true,
    m_flow_small=0.001) "Mass flow source"
    annotation (Placement(transformation(extent={{-60,10},{-40,30}})));
  Annex60.Fluid.MixingVolumes.MixingVolume vol3(
    redeclare package Medium = Medium,
    m_flow_nominal=1,
    V=1,
    nPorts=3,
    energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    prescribedHeatFlowRate=true) "Steady state mixing volume with 4 ports"
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={-90,40})));
  Annex60.Fluid.MixingVolumes.MixingVolume vol4(
    redeclare package Medium = Medium,
    m_flow_nominal=1,
    V=1,
    energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    nPorts=2) "Steady state mixing volume with 2 ports"
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=180,
        origin={-20,10})));
  Annex60.Fluid.MixingVolumes.MixingVolume vol5(
    redeclare package Medium = Medium,
    m_flow_nominal=1,
    V=1,
    nPorts=2,
    energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState)
    "Steady state mixing volume with 3 ports"
              annotation (Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=0,
        origin={-20,50})));
  Annex60.Fluid.Movers.BaseClasses.IdealSource idealSource2(
    redeclare package Medium = Medium,
    control_m_flow=true,
    m_flow_small=0.001) "Mass flow source"
    annotation (Placement(transformation(extent={{-60,50},{-40,70}})));
  Annex60.Fluid.MixingVolumes.MixingVolume vol1(
    redeclare package Medium = Medium,
    m_flow_nominal=1,
    V=1,
    energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    nPorts=3,
    prescribedHeatFlowRate=true) "Steady state mixing volume with 2 ports"
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=180,
        origin={-20,-70})));
  Annex60.Fluid.Movers.BaseClasses.IdealSource idealSource3(
    redeclare package Medium = Medium,
    control_m_flow=true,
    m_flow_small=0.001) "Mass flow source"
    annotation (Placement(transformation(extent={{-60,-70},{-40,-50}})));
  Annex60.Fluid.MixingVolumes.MixingVolume vol2(
    redeclare package Medium = Medium,
    m_flow_nominal=1,
    V=1,
    energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    nPorts=3) "Steady state mixing volume with 2 ports"
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=180,
        origin={28,-70})));
  Annex60.Fluid.Movers.BaseClasses.IdealSource idealSource4(
    redeclare package Medium = Medium,
    control_m_flow=true,
    m_flow_small=0.001) "Mass flow source"
    annotation (Placement(transformation(extent={{-10,-60},{10,-40}})));
  Annex60.Fluid.MixingVolumes.MixingVolume vol6(
    redeclare package Medium = Medium,
    m_flow_nominal=1,
    V=1,
    energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    nPorts=2,
    allowFlowReversal=false) "Steady state mixing volume with 2 ports"
              annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={28,-40})));
  Annex60.Fluid.MixingVolumes.MixingVolume vol7(
    redeclare package Medium = Medium,
    m_flow_nominal=1,
    V=1,
    energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    nPorts=3,
    prescribedHeatFlowRate=false) "Steady state mixing volume with 2 ports"
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=180,
        origin={-20,-140})));
  Annex60.Fluid.Movers.BaseClasses.IdealSource idealSource5(
    redeclare package Medium = Medium,
    control_m_flow=true,
    m_flow_small=0.001) "Mass flow source"
    annotation (Placement(transformation(extent={{-60,-140},{-40,-120}})));
  Annex60.Fluid.MixingVolumes.MixingVolume vol8(
    redeclare package Medium = Medium,
    m_flow_nominal=1,
    V=1,
    energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    nPorts=3,
    prescribedHeatFlowRate=true) "Steady state mixing volume with 2 ports"
              annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=180,
        origin={28,-140})));
  Annex60.Fluid.Movers.BaseClasses.IdealSource idealSource6(
    redeclare package Medium = Medium,
    control_m_flow=true,
    m_flow_small=0.001) "Mass flow source"
    annotation (Placement(transformation(extent={{-10,-130},{10,-110}})));
  Annex60.Fluid.MixingVolumes.MixingVolume vol9(
    redeclare package Medium = Medium,
    m_flow_nominal=1,
    V=1,
    energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    nPorts=2,
    allowFlowReversal=true) "Steady state mixing volume with 2 ports"
              annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={28,-110})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow preHea2
    "Prescribed heat flow"
    annotation (Placement(transformation(extent={{-100,-80},{-80,-60}})));
  Modelica.Blocks.Sources.RealExpression reaExp1(y=(290 - vol7.heatPort.T)/100*
        vol7.heatPort.T^(3/5)) "Non-linear thermal resistance equation"
    annotation (Placement(transformation(extent={{-160,-154},{-108,-126}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow preHea1
    "Prescribed heat flow"
    annotation (Placement(transformation(extent={{-100,-150},{-80,-130}})));
equation
  connect(cosine1.y, bou.T_in)
    annotation (Line(points={{79,30},{62,30},{62,36}}, color={0,0,127}));
  connect(idealSource1.m_flow_in, doubleRamp.y)
    annotation (Line(points={{-56,28},{-56,90},{-59,90}},  color={0,0,127}));
  connect(vol3.ports[1], idealSource1.port_a) annotation (Line(points={{-80,
          42.6667},{-80,20},{-60,20}},
                                color={0,127,255}));
  connect(vol4.ports[1], idealSource1.port_b)
    annotation (Line(points={{-22,20},{-22,20},{-40,20}},  color={0,127,255}));
  connect(idealSource2.m_flow_in, doubleRamp.y)
    annotation (Line(points={{-56,68},{-56,90},{-59,90}},
                                                        color={0,0,127}));
  connect(vol5.ports[1], bou.ports[1])
    annotation (Line(points={{-18,60},{40,60},{40,36.5714}},
                                                       color={0,127,255}));
  connect(idealSource2.port_a, vol3.ports[2]) annotation (Line(points={{-60,60},
          {-80,60},{-80,40}},     color={0,127,255}));
  connect(idealSource2.port_b, vol5.ports[2])
    annotation (Line(points={{-40,60},{-32,60},{-22,60}},
                                                    color={0,127,255}));
  connect(vol4.ports[2], bou.ports[2]) annotation (Line(points={{-18,20},{40,20},
          {40,37.7143}},             color={0,127,255}));
  connect(vol3.ports[3], bou.ports[3]) annotation (Line(points={{-80,37.3333},{
          40,37.3333},{40,38.8571}},
                                   color={0,127,255}));
  connect(idealSource3.m_flow_in, idealSource1.m_flow_in)
    annotation (Line(points={{-56,-52},{-56,-52},{-56,28}}, color={0,0,127}));
  connect(idealSource3.port_b, vol1.ports[1])
    annotation (Line(points={{-40,-60},{-22.6667,-60}}, color={0,127,255}));
  connect(vol1.ports[2], vol2.ports[1]) annotation (Line(points={{-20,-60},{-20,
          -60},{25.3333,-60}}, color={0,127,255}));
  connect(vol2.ports[2], bou.ports[4])
    annotation (Line(points={{28,-60},{40,-60},{40,40}}, color={0,127,255}));
  connect(idealSource4.port_a, vol1.ports[3]) annotation (Line(points={{-10,-50},
          {-17.3333,-50},{-17.3333,-60}}, color={0,127,255}));
  connect(idealSource4.m_flow_in, idealSource1.m_flow_in) annotation (Line(
        points={{-6,-42},{-22,-42},{-56,-42},{-56,28}}, color={0,0,127}));
  connect(idealSource4.port_b, vol6.ports[1])
    annotation (Line(points={{10,-50},{26,-50}}, color={0,127,255}));
  connect(vol2.ports[3], vol6.ports[2]) annotation (Line(points={{30.6667,-60},
          {30,-60},{30,-50}},color={0,127,255}));
  connect(idealSource5.m_flow_in, idealSource1.m_flow_in)
    annotation (Line(points={{-56,-122},{-56,28}}, color={0,0,127}));
  connect(idealSource5.port_b, vol7.ports[1])
    annotation (Line(points={{-40,-130},{-22.6667,-130}}, color={0,127,255}));
  connect(vol7.ports[2], vol8.ports[1]) annotation (Line(points={{-20,-130},{
          -20,-130},{25.3333,-130}},
                                 color={0,127,255}));
  connect(idealSource6.port_a, vol7.ports[3]) annotation (Line(points={{-10,
          -120},{-17.3333,-120},{-17.3333,-130}},
                                            color={0,127,255}));
  connect(idealSource6.m_flow_in, idealSource1.m_flow_in) annotation (Line(
        points={{-6,-112},{-22,-112},{-56,-112},{-56,28}}, color={0,0,127}));
  connect(idealSource6.port_b, vol9.ports[1])
    annotation (Line(points={{10,-120},{26,-120}}, color={0,127,255}));
  connect(vol8.ports[2], vol9.ports[2]) annotation (Line(points={{28,-130},{30,-130},
          {30,-120}}, color={0,127,255}));
  connect(idealSource3.port_a, bou.ports[5]) annotation (Line(points={{-60,-60},
          {-72,-60},{-82,-60},{-82,-20},{40,-20},{40,41.1429}}, color={0,127,255}));
  connect(vol8.ports[3], bou.ports[6]) annotation (Line(points={{30.6667,-130},
          {40,-130},{40,42.2857}},color={0,127,255}));
  connect(idealSource5.port_a, bou.ports[7]) annotation (Line(points={{-60,-130},
          {-70,-130},{-80,-130},{-80,-90},{40,-90},{40,43.4286}}, color={0,127,255}));
  connect(preHea2.port, vol1.heatPort)
    annotation (Line(points={{-80,-70},{-80,-70},{-30,-70}}, color={191,0,0}));
  connect(preHea1.port, vol7.heatPort) annotation (Line(points={{-80,-140},{-55,
          -140},{-30,-140}}, color={191,0,0}));
  connect(reaExp1.y, preHea1.Q_flow)
    annotation (Line(points={{-105.4,-140},{-100,-140}}, color={0,0,127}));
  connect(preHea2.Q_flow, doubleRamp.y) annotation (Line(points={{-100,-70},{-114,
          -70},{-114,76},{-59,76},{-59,90}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -200},{100,100}}), graphics={Text(
          extent={{42,-32},{126,-46}},
          lineColor={28,108,200},
          textString="<- allowFlowReversal = false"), Text(
          extent={{42,-102},{126,-116}},
          lineColor={28,108,200},
          textString="<- allowFlowReversal = true")}),
    experiment(StopTime=10),
    __Dymola_experimentSetupOutput,
    Documentation(info="<html>
<p>This model illustrates the use of a steady state mixing volume that is connected to more than two ports.</p>
<p>Its main goal is to prove that the model behaves well for zero flow when multiple ports are connected to the model.</p>
</html>"),
    __Dymola_Commands(file="Resources/Scripts/Dymola/Fluid/MixingVolumes/Validation/MixingVolumeZeroFlowMultiPort.mos"
        "Simulate and plot"),
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-200},{100,100}})));
end MixingVolumeZeroFlowMultiPortSystemSize;
