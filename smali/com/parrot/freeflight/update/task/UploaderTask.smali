.class public abstract Lcom/parrot/freeflight/update/task/UploaderTask;
.super Landroid/os/AsyncTask;
.source "UploaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;,
        Lcom/parrot/freeflight/update/task/UploaderTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/parrot/freeflight/update/task/UploaderTask$ProgressResult;",
        "Lcom/parrot/arsdk/arupdater/ARUPDATER_ERROR_ENUM;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancelTask()V
.end method
