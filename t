1.a
    let http = new XMLHttpRequest();
        http.onreadystatechange = () => {
            if (http.readyState == 4 && http.status == 200) {
                let one = JSON.parse( http.responseText);
                let countries=one.filter((c)=> c.region === "Asia").map(({name:{common}})=>common)
                console.log(countries)
            }
        }
        http.open("GET", "https://restcountries.com/v3.1/all");
        http.send();
b
  let http = new XMLHttpRequest();
        http.onreadystatechange = () => {
            if (http.readyState == 4 && http.status == 200) {
                let one = JSON.parse( http.responseText);
                let countries=one.filter(({population})=>population < 200000).map(({name:{common}})=>common)
                console.log(countries)
            }
        }
        http.open("GET", "https://restcountries.com/v3.1/all");
        http.send();
c.
  let http = new XMLHttpRequest();
        http.onreadystatechange = () => {
            if (http.readyState == 4 && http.status == 200) {
                let one = JSON.parse( http.responseText);
              let countries=one.forEach(({name:{common},capital,flag}) => {
                   console.log (common,capital,flag)
              });
              
            }
        }
        http.open("GET", "https://restcountries.com/v3.1/all");
        http.send();
d.
 let http = new XMLHttpRequest();
        http.onreadystatechange = () => {
            if (http.readyState == 4 && http.status == 200) {
                let one = JSON.parse( http.responseText);
              let countries=one.reduce((total,{population})=>total+=population,0)
              console.log(countries)
            }
        }
        http.open("GET", "https://restcountries.com/v3.1/all");
        http.send();
        
        
e.
   let http = new XMLHttpRequest();
        http.onreadystatechange = () => {
            if (http.readyState == 4 && http.status == 200) {
                let one = JSON.parse( http.responseText);
              let countries=one.filter((i)=>i.currencies?.USD?.name === "United States dollar").map(({name:{common}})=>common)
              console.log(countries)
            }
        }
        http.open("GET", "https://restcountries.com/v3.1/all");
        http.send();
