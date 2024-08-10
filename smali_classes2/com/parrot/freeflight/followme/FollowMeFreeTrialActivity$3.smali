.class Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$3;
.super Ljava/lang/Object;
.source "FollowMeFreeTrialActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

.field final synthetic val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;Lcom/parrot/freeflight/view/ViewPagerIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$3;->this$0:Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageScrollStateChanged(I)V

    .line 158
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 146
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeFreeTrialActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageSelected(I)V

    .line 152
    return-void
.end method
