.class final Lcom/parrot/freeflight/home/HomeUIController$35;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController;->switchCardVisibility(Landroid/view/View;ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$card:Landroid/view/View;

.field final synthetic val$endValue:F


# direct methods
.method constructor <init>(FLandroid/view/View;)V
    .locals 0

    .prologue
    .line 2137
    iput p1, p0, Lcom/parrot/freeflight/home/HomeUIController$35;->val$endValue:F

    iput-object p2, p0, Lcom/parrot/freeflight/home/HomeUIController$35;->val$card:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2140
    iget v0, p0, Lcom/parrot/freeflight/home/HomeUIController$35;->val$endValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$35;->val$card:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2143
    :cond_0
    return-void
.end method
