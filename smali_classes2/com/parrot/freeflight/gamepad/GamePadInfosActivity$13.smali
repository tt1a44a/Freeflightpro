.class Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$13;
.super Ljava/lang/Object;
.source "GamePadInfosActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;
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
    .line 533
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$13;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 4

    .prologue
    .line 536
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$13;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$13;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$400(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$13;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$500(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$13;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->access$600(Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;Lcom/parrot/freeflight/user/UserRemoteCtrl;ILcom/parrot/freeflight/gamepad/GamePad;)V

    .line 537
    return-void
.end method
