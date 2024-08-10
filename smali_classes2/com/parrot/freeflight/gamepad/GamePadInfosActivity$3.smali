.class Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$3;
.super Ljava/lang/Object;
.source "GamePadInfosActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$100(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$200(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->startScan()V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$3;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$200(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->stopScan()V

    goto :goto_0
.end method
