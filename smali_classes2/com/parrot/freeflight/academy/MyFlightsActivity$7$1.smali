.class Lcom/parrot/freeflight/academy/MyFlightsActivity$7$1;
.super Ljava/lang/Object;
.source "MyFlightsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/MyFlightsActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/academy/MyFlightsActivity$7;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/academy/MyFlightsActivity$7;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7$1;->this$1:Lcom/parrot/freeflight/academy/MyFlightsActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7$1;->this$1:Lcom/parrot/freeflight/academy/MyFlightsActivity$7;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void
.end method
