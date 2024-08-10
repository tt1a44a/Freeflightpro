.class Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$1;
.super Ljava/lang/Object;
.source "FlightDirectorManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->getBestOfFiles()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$1;->this$0:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 268
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ".mov"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".mp4"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 269
    :goto_0
    return v1

    .line 271
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
