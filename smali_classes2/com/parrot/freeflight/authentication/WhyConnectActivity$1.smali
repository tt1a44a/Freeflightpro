.class Lcom/parrot/freeflight/authentication/WhyConnectActivity$1;
.super Ljava/lang/Object;
.source "WhyConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/authentication/WhyConnectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/authentication/WhyConnectActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/authentication/WhyConnectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/authentication/WhyConnectActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/parrot/freeflight/authentication/WhyConnectActivity$1;->this$0:Lcom/parrot/freeflight/authentication/WhyConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/authentication/WhyConnectActivity$1;->this$0:Lcom/parrot/freeflight/authentication/WhyConnectActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->onBackPressed(Landroid/support/v4/app/FragmentActivity;)V

    .line 53
    return-void
.end method
