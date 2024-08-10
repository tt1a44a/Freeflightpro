.class Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;
.super Ljava/lang/Object;
.source "MyFlightsDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->initSmallLayout(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$600(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$600(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$900(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$900(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    new-instance v1, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$902(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$1000(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5$1;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$800(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;I)V

    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a016e

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$900(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    move-result-object v2

    const-string v3, "fragment gps tag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 287
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$900(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$602(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;

    goto :goto_0
.end method
