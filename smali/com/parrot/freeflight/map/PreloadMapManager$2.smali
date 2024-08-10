.class Lcom/parrot/freeflight/map/PreloadMapManager$2;
.super Ljava/lang/Object;
.source "PreloadMapManager.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/PreloadMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/PreloadMapManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/PreloadMapManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/PreloadMapManager;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/parrot/freeflight/map/PreloadMapManager$2;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$2;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$100(Lcom/parrot/freeflight/map/PreloadMapManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$2;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$208(Lcom/parrot/freeflight/map/PreloadMapManager;)I

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$2;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$200(Lcom/parrot/freeflight/map/PreloadMapManager;)I

    move-result v0

    iget-object v1, p0, Lcom/parrot/freeflight/map/PreloadMapManager$2;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v1}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$300(Lcom/parrot/freeflight/map/PreloadMapManager;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$2;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$400(Lcom/parrot/freeflight/map/PreloadMapManager;)V

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$2;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$500(Lcom/parrot/freeflight/map/PreloadMapManager;)Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$2;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$500(Lcom/parrot/freeflight/map/PreloadMapManager;)Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;->preloadSuccess()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$2;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$500(Lcom/parrot/freeflight/map/PreloadMapManager;)Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$2;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$500(Lcom/parrot/freeflight/map/PreloadMapManager;)Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/map/PreloadMapManager$2;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v1}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$200(Lcom/parrot/freeflight/map/PreloadMapManager;)I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/map/PreloadMapManager$2;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v2}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$300(Lcom/parrot/freeflight/map/PreloadMapManager;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;->preloadProgress(II)V

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$2;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$600(Lcom/parrot/freeflight/map/PreloadMapManager;)V

    goto :goto_0
.end method
