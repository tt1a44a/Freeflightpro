.class Lcom/parrot/freeflight/core/AutoLaunchManager$1;
.super Ljava/lang/Object;
.source "AutoLaunchManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;


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
    .line 101
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$1;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$1;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$1;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$100(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/core/model/Model;)V

    .line 107
    :cond_0
    return-void
.end method
