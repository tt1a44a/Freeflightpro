.class Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$5;
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
    .line 174
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdateListActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
.end method
