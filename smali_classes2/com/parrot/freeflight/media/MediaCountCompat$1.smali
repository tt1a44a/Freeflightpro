.class Lcom/parrot/freeflight/media/MediaCountCompat$1;
.super Ljava/lang/Object;
.source "MediaCountCompat.java"

# interfaces
.implements Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/MediaCountCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/MediaCountCompat;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/MediaCountCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/MediaCountCompat;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/parrot/freeflight/media/MediaCountCompat$1;->this$0:Lcom/parrot/freeflight/media/MediaCountCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaNamesLoaded()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onMediaObjectUpdated(Lcom/parrot/arsdk/armedia/ARMediaObject;)V
    .locals 0
    .param p1, "mediaObject"    # Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    return-void
.end method

.method public onRequestCompleted(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;ZSS)V
    .locals 3
    .param p1, "result"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "canceled"    # Z
    .param p3, "photoCount"    # S
    .param p4, "videoCount"    # S

    .prologue
    .line 51
    const-string v0, "MediaCountCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " photo(s) and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " video(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat$1;->this$0:Lcom/parrot/freeflight/media/MediaCountCompat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/media/MediaCountCompat;->access$002(Lcom/parrot/freeflight/media/MediaCountCompat;Lcom/parrot/freeflight/media/task/MediaTask;)Lcom/parrot/freeflight/media/task/MediaTask;

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat$1;->this$0:Lcom/parrot/freeflight/media/MediaCountCompat;

    invoke-static {v0}, Lcom/parrot/freeflight/media/MediaCountCompat;->access$100(Lcom/parrot/freeflight/media/MediaCountCompat;)Lcom/parrot/freeflight/media/MediaCountCompat$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/media/MediaCountCompat$1;->this$0:Lcom/parrot/freeflight/media/MediaCountCompat;

    invoke-static {v0}, Lcom/parrot/freeflight/media/MediaCountCompat;->access$100(Lcom/parrot/freeflight/media/MediaCountCompat;)Lcom/parrot/freeflight/media/MediaCountCompat$Listener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/parrot/freeflight/media/MediaCountCompat$Listener;->onMediaListed(SS)V

    .line 56
    :cond_0
    return-void
.end method
