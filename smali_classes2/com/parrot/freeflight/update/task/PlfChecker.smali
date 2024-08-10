.class public Lcom/parrot/freeflight/update/task/PlfChecker;
.super Ljava/lang/Object;
.source "PlfChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlfChecker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareDownloadedPlfToVersion(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    .locals 8
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rootFolder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "softVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 25
    const/4 v4, 0x0

    .line 26
    .local v4, "toReturn":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    sget-object v1, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    .line 27
    .local v1, "error":Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;
    const/4 v2, 0x0

    .line 29
    .local v2, "manager":Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    :try_start_0
    new-instance v3, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;

    invoke-direct {v3}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arupdater/ARUpdaterException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "manager":Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    .local v3, "manager":Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    move-object v2, v3

    .line 34
    .end local v3    # "manager":Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    .restart local v2    # "manager":Lcom/parrot/arsdk/arupdater/ARUpdaterManager;
    :goto_0
    sget-object v5, Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;->ARUPDATER_OK:Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    if-ne v1, v5, :cond_0

    if-eqz v2, :cond_0

    .line 36
    :try_start_1
    invoke-virtual {v2, p0, p2, p1}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->isPlfVersionUpToDate(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    :try_end_1
    .catch Lcom/parrot/arsdk/arupdater/ARUpdaterException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 41
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v2}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->dispose()V

    .line 44
    :cond_1
    return-object v4

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Lcom/parrot/arsdk/arupdater/ARUpdaterException;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->getError()Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;

    move-result-object v1

    .line 32
    invoke-virtual {v0}, Lcom/parrot/arsdk/arupdater/ARUpdaterException;->printStackTrace()V

    goto :goto_0

    .line 37
    .end local v0    # "e":Lcom/parrot/arsdk/arupdater/ARUpdaterException;
    :catch_1
    move-exception v0

    .line 38
    .restart local v0    # "e":Lcom/parrot/arsdk/arupdater/ARUpdaterException;
    const-string v5, "PlfChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not check if plf version is up to date: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
