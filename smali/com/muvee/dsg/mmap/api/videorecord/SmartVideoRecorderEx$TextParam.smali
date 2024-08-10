.class public Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;
.super Ljava/lang/Object;
.source "SmartVideoRecorderEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextParam"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field public renderParamMap:Lcom/muvee/dsg/text/TextRenderParamMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;Z)Z
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    monitor-enter p0

    .line 117
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;->b:Z

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;->a:Ljava/lang/String;

    .line 122
    return-void

    .line 119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
