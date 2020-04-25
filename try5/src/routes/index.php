<div class="app">
    <header>
        <Header />
    </header>
    <?php
        $connect = mysqli_connect('127.0.0.1','root','','leaderboard_sql');
        $query = mysqli_query($connect, "SELECT * FROM gumanitar");
        $num_rows = mysqli_num_rows($query);
    ?>
    <main>

        <div class="wrapper">
            <div class="title">
                <h1>SPISOK REZULTATOV</h1>
            </div>
           
            <div class="subject">
                <h2>История</h2>
            </div>
            
            <div class="content">
                <table>
                    <tr>
                         <?php for ($i=0; $i < $num_rows ; $i=$i+1) { ?>
                <?php  $result1 = $query->fetch_assoc()?>
                        <th><?php echo $result1['name'];?></th>
                        <td><?php echo $result1['score'];?></td>
                    </tr>
  
                    <?php }?>
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
    h1{
        font-family: 'Bangers';
    }
    .app {
        display: flex;
        width: 100vw;
        height: 100vh;
        background-image: url("https://png.pngtree.com/back_origin_pic/04/58/39/2d405160b51ba513686dc8cb5fcff4db.jpg");
        background-size: 100vw 100vh;
        background-position: center;
        overflow-x: hidden;
        flex-direction: column;
        justify-content: center;
    }
    main {
        display: flex;
        width: 100vw;
        height: 100vh;
        align-items: center;
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