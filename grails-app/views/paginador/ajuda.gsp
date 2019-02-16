<!DOCTYPE html>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'paginador.label', default: 'Paginador')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/101/three.min.js"></script>
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/desktop-style.css?v=266bb8a6f649">
    <link rel="stylesheet" href="//wa1.narvii.com/static/dist/css/misc-desktop-style.css?v=84527a92ab6d">
    <asset:link rel="icon" href="faviconSverse.ico" type="image/x-ico"/>

    <style>
    body {
        margin: 0;
    }

    canvas {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
    </style>

    <script>
        window.onload = function (ev) {
            var w = window.innerWidth, h = window.innerHeight;
            window.onresize = function(){
                var w = window.innerWidth, h = window.innerHeight;
                camera.aspect = w / h;
                camera.updateProjectionMatrix();
                renderer.setSize( w, h );
            }

            cameraSpeed = .0003;
            lightSpeed = .001;
            tubularSegments = 1000;
            radialSegments = 3;
            tubeRadius = 2;
            ambientLight = 0x222222;
            lightColor = 0xffffff;
            lightIntensity = 1;
            lightDistance = 20;
            hs = 0; // Hue-Start
            he = 360; // Hue-End

            var renderer = new THREE.WebGLRenderer({
                canvas: document.querySelector("canvas"),
                antialias: true,
            });
            renderer.setSize(w, h);

            var scene = new THREE.Scene();
            var camera = new THREE.PerspectiveCamera(60, w / h, .001, 1000);

            var starsGeometry = new THREE.Geometry();
            for(i=0; i<3000; i++){
                var star = new THREE.Vector3();
                star.x = THREE.Math.randFloatSpread(1500);
                star.y = THREE.Math.randFloatSpread(1500);
                star.z = THREE.Math.randFloatSpread(1500);
                starsGeometry.vertices.push(star);
            }
            var starsMaterial = new THREE.PointsMaterial({color: 0xffffff});
            var starField = new THREE.Points(starsGeometry,starsMaterial);
            scene.add(starField);

            for (i=0; i<p.length; i++) {
                var x = p[i][0];
                var y = p[i][2];
                var z = p[i][1];
                p[i] = new THREE.Vector3(x,y,z);
            }
            var path = new THREE.CatmullRomCurve3(p);
            var geometry = new THREE.TubeGeometry(path,tubularSegments,tubeRadius,radialSegments,true);

            hue = hs;
            hup = true;
            for(i=0; i<geometry.faces.length; i++){
                hup==1?hue++:hue--;
                hue==he?hup=false:(hue==hs)?hup=true:0;
                geometry.faces[i].color = new THREE.Color("hsl("+hue+",100%,50%)");
            }

            var material = new THREE.MeshLambertMaterial({
                side: THREE.BackSide,
                vertexColors: THREE.FaceColors,
                wireframe: true
            });

            var tube = new THREE.Mesh(geometry, material);
            scene.add(tube);

            var light = new THREE.PointLight(0xffffff, 1, 50);
            scene.add(light);
            var light2 = new THREE.AmbientLight(ambientLight);
            scene.add(light2);

            var l1 = new THREE.PointLight(lightColor, lightIntensity, lightDistance);
            scene.add(l1);
            var l2 = new THREE.PointLight(lightColor, lightIntensity, lightDistance);
            scene.add(l2);
            var l3 = new THREE.PointLight(lightColor, lightIntensity, lightDistance);
            scene.add(l3);
            var l4 = new THREE.PointLight(lightColor, lightIntensity, lightDistance);
            scene.add(l4);
            var l5 = new THREE.PointLight(lightColor, lightIntensity, lightDistance);
            scene.add(l5);

            var pct = 0;
            var pct2 = 0;
            function render(){
                pct += cameraSpeed
                pct2 += lightSpeed;
                var pt1 = path.getPointAt(pct%1);
                var pt2 = path.getPointAt((pct + .01)%1);
                camera.position.set(pt1.x,pt1.y,pt1.z);
                camera.lookAt(pt2);
                light.position.set(pt2.x, pt2.y, pt2.z);

                l1.position.set(path.getPointAt((pct2+.0)%1).x, path.getPointAt((pct2+.0)%1).y, path.getPointAt((pct2+.0)%1).z);
                l2.position.set(path.getPointAt((pct2+.2)%1).x, path.getPointAt((pct2+.2)%1).y, path.getPointAt((pct2+.2)%1).z);
                l3.position.set(path.getPointAt((pct2+.4)%1).x, path.getPointAt((pct2+.4)%1).y, path.getPointAt((pct2+.4)%1).z);
                l4.position.set(path.getPointAt((pct2+.6)%1).x, path.getPointAt((pct2+.6)%1).y, path.getPointAt((pct2+.6)%1).z);
                l5.position.set(path.getPointAt((pct2+.8)%1).x, path.getPointAt((pct2+.8)%1).y, path.getPointAt((pct2+.8)%1).z);

                renderer.render(scene, camera);
                requestAnimationFrame(render);
            }
            requestAnimationFrame(render);
        }
    </script>

</head>

<body>
<canvas></canvas>
<script>
    // http://www.cssplant.com/clip-path-generator
    p = [
        [389,246,0],
        [410,255,20],
        [413,268,7],
        [431,261,12],
        [418,244,30],
        [416,217,25],
        [420,205,8],
        [427,227,-20],
        [432,236,5],
        [444,228,12],
        [451,232,41],
        [446,246,72],
        [443,264,96],
        [446,278,65],
        [463,267,20],
        [460,258,-10],
        [464,243,-20],
        [459,233,0],
        [475,225,22],
        [484,225,29],
        [490,214,51],
        [476,202,55],
        [462,202,55],
        [446,205,42],
        [440,192,42],
        [430,183,72],
        [413,184,58],
        [406,191,32],
        [406,207,0],
        [402,220,0],
        [390,222,20],
        [385,228,10],
        [389,246,0]
    ];
</script>

<div class="container">
    <div class="columns">
        <div class="column col-12">
            <header class="global-header">
                <div class="content community-bg">
                    <div class="container">
                        <g:render template="../templates/_navGlobal"/>
                    </div>
                </div>
            </header>
            <g:render template="../templates/_navHome"/>
            <div style="text-align: center; margin-right: 0;">

                <g:render template="../templates/_mainPage"/>

            </div>
        </div>
    </div>
</div>
</body>
</html>