.class Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$1;
.super Ljava/lang/Object;
.source "QuadcopterSettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mOnBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/settings/QuadcopterSettingsView;->mOnBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;->onBackButtonClick()V

    .line 79
    :cond_0
    return-void
.end method
