.class public Lcom/parrot/freeflight/media/MediaSharingHelper;
.super Ljava/lang/Object;
.source "MediaSharingHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shareBitmap(Landroid/content/Context;ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chooserTitle"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/parrot/freeflight/media/MediaSharingHelper;->shareBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public static shareBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chooserTitle"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2, v3, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "bitmapPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 41
    .local v1, "bitmapUri":Landroid/net/Uri;
    const-string v2, "image/*"

    invoke-static {p0, p1, v1, v2}, Lcom/parrot/freeflight/media/MediaSharingHelper;->shareUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static shareFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chooserTitle"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v1, "com.parrot.freeflight3.file.provider"

    invoke-static {p0, v1, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 35
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, p1, v0, p3}, Lcom/parrot/freeflight/media/MediaSharingHelper;->shareUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static shareImage(Landroid/content/Context;ILjava/io/File;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chooserTitle"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/parrot/freeflight/media/MediaSharingHelper;->shareImage(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 23
    return-void
.end method

.method public static shareImage(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chooserTitle"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 18
    const-string v0, "image/jpeg"

    invoke-static {p0, p1, p2, v0}, Lcom/parrot/freeflight/media/MediaSharingHelper;->shareFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static shareUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chooserTitle"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "share":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method public static shareVideo(Landroid/content/Context;ILjava/io/File;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chooserTitle"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/parrot/freeflight/media/MediaSharingHelper;->shareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 31
    return-void
.end method

.method public static shareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chooserTitle"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 26
    const-string/jumbo v0, "video/*"

    invoke-static {p0, p1, p2, v0}, Lcom/parrot/freeflight/media/MediaSharingHelper;->shareFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 27
    return-void
.end method
