.class Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$1;
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
    .line 138
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadInfosActivity;->onBackPressed()V

    .line 142
    return-void
.end method
