.class Lcom/parrot/freeflight/core/AutoLaunchManager$5;
.super Ljava/lang/Object;
.source "AutoLaunchManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/AutoLaunchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$5;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteCtrlModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$5;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1600(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$5;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1602(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;

    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$5;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1200(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$5;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$1500(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    .line 174
    :cond_0
    return-void
.end method
