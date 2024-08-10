.class Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;
.super Landroid/os/AsyncTask;
.source "AcademyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAvatarTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_ALLOWED:I = 0x0

.field private static final NO_CACHE:I = 0x1


# instance fields
.field private final URL_AVATAR:Ljava/lang/String;

.field mCacheAllowed:Z

.field private mError:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;I)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/core/academy/AcademyManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .param p3, "cacheStrategy"    # I

    .prologue
    .line 683
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parrot/freeflight/core/academy/client/AcademyModule;->getAcademyBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->URL_AVATAR:Ljava/lang/String;

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    .line 674
    sget-object v0, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mError:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 684
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->addListener(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 685
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mCacheAllowed:Z

    .line 686
    return-void

    .line 685
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 8
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 697
    aget-object v5, p1, v7

    if-eqz v5, :cond_1

    .line 698
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->URL_AVATAR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, "avatarUrl":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v5}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1100(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mCacheAllowed:Z

    invoke-static {v5, v1, v6}, Lcom/parrot/freeflight/core/academy/cache/Avatar;->getAvatar(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 704
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 705
    sget-object v5, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CONNECTION:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    iput-object v5, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mError:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 708
    :cond_0
    if-eqz v2, :cond_2

    .line 709
    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v5}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1100(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0602c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 713
    .local v0, "avatarSize":I
    :try_start_0
    invoke-static {v2, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 714
    invoke-static {v2, v1}, Lcom/parrot/arsdk/armedia/Exif2Interface;->handleOrientation(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 716
    iget-object v5, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v5}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1100(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v4

    .line 717
    .local v4, "roundedBitmapDrawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 718
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 719
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setDither(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v0    # "avatarSize":I
    .end local v4    # "roundedBitmapDrawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    :goto_1
    return-object v4

    .line 700
    .end local v1    # "avatarUrl":Ljava/lang/String;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "avatarUrl":Ljava/lang/String;
    goto :goto_0

    .line 722
    .restart local v0    # "avatarSize":I
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 723
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "AcademyManagerTAG"

    const-string v6, "Could not load avatar"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    .end local v0    # "avatarSize":I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 665
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->doInBackground([Ljava/lang/String;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 749
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 750
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 751
    .local v0, "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    sget-object v2, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CANCELED:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onError(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Ljava/lang/Object;)V

    goto :goto_0

    .line 753
    .end local v0    # "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 754
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$802(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;)Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    .line 755
    return-void
.end method

.method protected onPostExecute(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 4
    .param p1, "avatar"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 733
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mError:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    sget-object v2, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    if-eq v1, v2, :cond_0

    .line 734
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 735
    .local v0, "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mError:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onError(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Ljava/lang/Object;)V

    goto :goto_0

    .line 738
    .end local v0    # "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$902(Lcom/parrot/freeflight/core/academy/AcademyManager;Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 739
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 740
    .restart local v0    # "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$900(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 743
    .end local v0    # "listener":Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 744
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$802(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;)Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;

    .line 745
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 665
    check-cast p1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager$DownloadAvatarTask;->onPostExecute(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    return-void
.end method
