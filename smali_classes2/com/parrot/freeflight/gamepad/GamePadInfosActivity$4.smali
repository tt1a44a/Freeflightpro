.class Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$4;
.super Ljava/lang/Object;
.source "GamePadInfosActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;


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
    .line 166
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$4;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceClick(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 1
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$4;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$000(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)V

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$4;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$200(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->selectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 171
    return-void
.end method
