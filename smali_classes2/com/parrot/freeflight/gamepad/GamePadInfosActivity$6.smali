.class Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$6;
.super Ljava/lang/Object;
.source "GamePadInfosActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 181
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$6;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$6;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$6;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    const-class v3, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method
