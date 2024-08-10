.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$2;
.super Ljava/lang/Object;
.source "MyFlightsDetailsSummaryFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "id"    # I

    .prologue
    .line 106
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->getRunSummary()Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    move-result-object v0

    .line 107
    .local v0, "run":Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
    if-eqz v0, :cond_0

    .line 108
    packed-switch p2, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->updateRunGrade(Z)V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;->updateRunGrade(Z)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x7f0a03aa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
