.class Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c$1;
.super Landroid/os/Handler;
.source "AdvancedVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$a;

    .line 52
    invoke-interface {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$a;->a(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v1, v0, v2

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)[Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 56
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
