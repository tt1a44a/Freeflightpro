.class Lcom/parrot/freeflight/offer/OfferManager$DownloadOfferImageTask;
.super Landroid/os/AsyncTask;
.source "OfferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/offer/OfferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadOfferImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/parrot/freeflight/offer/model/Offer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/offer/OfferManager;)V
    .locals 0
    .param p1, "offerManager"    # Lcom/parrot/freeflight/offer/OfferManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/parrot/freeflight/offer/OfferManager$DownloadOfferImageTask;->mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;

    .line 282
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/parrot/freeflight/offer/model/Offer;)Ljava/lang/Long;
    .locals 11
    .param p1, "offers"    # [Lcom/parrot/freeflight/offer/model/Offer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 286
    const-wide/16 v6, 0x0

    .line 287
    .local v6, "totalSize":J
    if-eqz p1, :cond_1

    .line 288
    array-length v0, p1

    .line 289
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 290
    iget-object v5, p0, Lcom/parrot/freeflight/offer/OfferManager$DownloadOfferImageTask;->mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;

    aget-object v8, p1, v2

    invoke-virtual {v5, v8}, Lcom/parrot/freeflight/offer/OfferManager;->getOfferImageFile(Lcom/parrot/freeflight/offer/model/Offer;)Ljava/io/File;

    move-result-object v3

    .line 292
    .local v3, "image":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 293
    const/4 v4, 0x0

    .line 295
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    aget-object v8, p1, v2

    iget-object v8, v8, Lcom/parrot/freeflight/offer/model/Offer;->imageUrl:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    .line 296
    invoke-static {v4, v3}, Lcom/parrot/freeflight/core/academy/utils/FileUtils;->inputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    if-eqz v4, :cond_0

    .line 302
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_0
    :goto_1
    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 311
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v8, 0x0

    int-to-float v9, v2

    int-to-float v10, v0

    div-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/offer/OfferManager$DownloadOfferImageTask;->publishProgress([Ljava/lang/Object;)V

    .line 313
    invoke-virtual {p0}, Lcom/parrot/freeflight/offer/OfferManager$DownloadOfferImageTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 316
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "image":Ljava/io/File;
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    return-object v5

    .line 303
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "image":Ljava/io/File;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 297
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 298
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    if-eqz v4, :cond_0

    .line 302
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 303
    :catch_2
    move-exception v1

    .line 304
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 300
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    .line 302
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 305
    :cond_2
    :goto_2
    throw v5

    .line 303
    :catch_3
    move-exception v1

    .line 304
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 289
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 276
    check-cast p1, [Lcom/parrot/freeflight/offer/model/Offer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/offer/OfferManager$DownloadOfferImageTask;->doInBackground([Lcom/parrot/freeflight/offer/model/Offer;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 323
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 276
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/offer/OfferManager$DownloadOfferImageTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 320
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 276
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/offer/OfferManager$DownloadOfferImageTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
