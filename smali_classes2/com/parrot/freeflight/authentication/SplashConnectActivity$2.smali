.class Lcom/parrot/freeflight/authentication/SplashConnectActivity$2;
.super Ljava/lang/Object;
.source "SplashConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/authentication/SplashConnectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/authentication/SplashConnectActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/authentication/SplashConnectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/authentication/SplashConnectActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/authentication/SplashConnectActivity$2;->this$0:Lcom/parrot/freeflight/authentication/SplashConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/authentication/SplashConnectActivity$2;->this$0:Lcom/parrot/freeflight/authentication/SplashConnectActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/authentication/SplashConnectActivity$2;->this$0:Lcom/parrot/freeflight/authentication/SplashConnectActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/authentication/WhyConnectActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/authentication/SplashConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method
