.class Lcom/parrot/freeflight/start/StartActivity$12;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/start/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/start/StartActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/start/StartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/parrot/freeflight/start/StartActivity$12;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$12;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/start/StartActivity;->access$802(Lcom/parrot/freeflight/start/StartActivity;Z)Z

    .line 459
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$12;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$700(Lcom/parrot/freeflight/start/StartActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$12;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$900(Lcom/parrot/freeflight/start/StartActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$12;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$1000(Lcom/parrot/freeflight/start/StartActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$12;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/start/StartActivity;->nextScreen()V

    .line 462
    :cond_1
    return-void
.end method
