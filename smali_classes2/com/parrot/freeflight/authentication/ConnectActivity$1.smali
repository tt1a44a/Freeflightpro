.class Lcom/parrot/freeflight/authentication/ConnectActivity$1;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/authentication/ConnectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/authentication/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/authentication/ConnectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/authentication/ConnectActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/authentication/ConnectActivity$1;->this$0:Lcom/parrot/freeflight/authentication/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/authentication/ConnectActivity$1;->this$0:Lcom/parrot/freeflight/authentication/ConnectActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/authentication/ConnectActivity$1;->this$0:Lcom/parrot/freeflight/authentication/ConnectActivity;

    const-class v3, Lcom/parrot/freeflight/myparrot/MyParrotLoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/authentication/ConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/authentication/ConnectActivity$1;->this$0:Lcom/parrot/freeflight/authentication/ConnectActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/authentication/ConnectActivity;->finish()V

    .line 59
    return-void
.end method
