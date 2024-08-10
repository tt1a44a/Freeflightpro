.class public Lcom/parrot/freeflight/media/model/DngDataTransferMedia;
.super Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
.source "DngDataTransferMedia.java"


# static fields
.field private static final EXT_DNG:Ljava/lang/String; = ".dng"

.field private static final EXT_JPG:Ljava/lang/String; = ".jpg"


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)V
    .locals 10
    .param p1, "jpgMedia"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 16
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getProductValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".jpg"

    const-string v3, ".dng"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".jpg"

    const-string v4, ".dng"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getRemotePath()Ljava/lang/String;

    move-result-object v0

    const-string v6, ".jpg"

    const-string v8, ".dng"

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v0, p0

    move-object v9, v7

    .line 16
    invoke-direct/range {v0 .. v9}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F[B)V

    .line 19
    return-void
.end method
