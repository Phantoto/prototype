<div class="app">
    <header>
        <Header />
    </header>

    <main>
        <div class="wrapper">
            <div class="title">
                <h1>SPISOK REZULTATOV</h1>
            </div>
            <div class="subject">
                <h2>ISTORIYA</h2>
            </div>
            <div class="content">
                <table>
                    <tr>
                        <th>NAME</th>
                        <td>SCORE</td>
                    </tr>
                    <tr>
                        <th>NAME</th>
                        <td>SCORE</td>
                    </tr>
                       <tr>
                        <th>NAME</th>
                        <td>SCORE</td>
                    </tr>
                    <tr>
                        <th>NAME</th>
                        <td>SCORE</td>
                    </tr>
                </table>
            </div>
        </div>
    </main>

    <footer>
        <Footer />
    </footer>
</div>

<script>
    import Header from '../components/Header.svelte'
    import Footer from '../components/Footer.svelte'
</script>

<style>
    .app {
        display: flex;
        width: 100vw;
        height: 100vh;
        background-image: url("https://png.pngtree.com/back_origin_pic/04/58/39/2d405160b51ba513686dc8cb5fcff4db.jpg");
        background-size: 100vw 100vh;
        background-position: center;
        overflow-x: hidden;
        flex-direction: column;
    }
    main {
        display: flex;
        width: 100vw;
        height: 100vh;
    }
    .wrapper {
        display: flex;
        flex-direction: column;
        width: 1180px;
        justify-content: center;
    }
    .title {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 20px;
    }
    .subject {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 20px;
    }
    .content {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    table {
        border-collapse: collapse;
        border: 5px solid rgba(15, 51, 117);
        text-align: left;
        width: 300px;
        margin-bottom: 20px;
    }
    th, td {
        border: 3px solid rgba(15, 51, 117);
        padding: 20px;
        border-radius: 3px;
    }
</style>