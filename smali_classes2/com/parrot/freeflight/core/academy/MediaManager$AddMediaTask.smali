.class Lcom/parrot/freeflight/core/academy/MediaManager$AddMediaTask;
.super Landroid/os/AsyncTask;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddMediaTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/MediaManager;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/core/academy/MediaManager;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/MediaManager$AddMediaTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/core/academy/MediaManager;Lcom/parrot/freeflight/core/academy/MediaManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/core/academy/MediaManager;
    .param p2, "x1"    # Lcom/parrot/freeflight/core/academy/MediaManager$1;

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/MediaManager$AddMediaTask;-><init>(Lcom/parrot/freeflight/core/academy/MediaManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 777
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/MediaManager$AddMediaTask;->doInBackground([Ljava/io/File;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/io/File;)Ljava/lang/Void;
    .locals 2
    .param p1, "files"    # [Ljava/io/File;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/MediaManager$AddMediaTask;->this$0:Lcom/parrot/freeflight/core/academy/MediaManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/MediaManager;->access$1200(Lcom/parrot/freeflight/core/academy/MediaManager;)Lcom/parrot/arsdk/armedia/ARMediaManager;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/armedia/ARMediaManager;->addMedia(Ljava/io/File;)Z

    .line 782
    const/4 v0, 0x0

    return-object v0
.end method
