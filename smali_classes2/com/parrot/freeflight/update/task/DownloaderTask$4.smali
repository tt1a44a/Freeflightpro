.class Lcom/parrot/freeflight/update/task/DownloaderTask$4;
.super Ljava/lang/Object;
.source "DownloaderTask.java"

# interfaces
.implements Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/task/DownloaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/task/DownloaderTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/task/DownloaderTask;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/parrot/freeflight/update/task/DownloaderTask$4;->this$0:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheck(Z)V
    .locals 0
    .param p1, "hasInternet"    # Z

    .prologue
    .line 418
    return-void
.end method
