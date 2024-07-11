to_delete = <<EOS
  <script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-27550943-1']);
    _gaq.push(['_trackPageview']);

    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

  </script>
EOS

to_insert = <<EOS
  <!-- Google tag (gtag.js) -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=G-04RMBK88EL"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'G-04RMBK88EL');
  </script>
EOS

Dir.glob('hocomoco_ad/motif_details/*.html').each{|fn|
  text = File.readlines(fn).map(&:chomp).join("\n").sub(to_delete, '').sub(/<head>\s*\n/, "<head>\n#{to_insert}\n" )
  File.write(fn, text)
}
