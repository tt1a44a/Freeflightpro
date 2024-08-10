.class Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;
.super Landroid/support/constraint/ConstraintLayout;
.source "DataConfidentialityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->mListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->mListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->mListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->onLearnMoreClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;)Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->mListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;

    return-object v0
.end method

.method private onLearnMoreClicked()V
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Landroid/support/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0500d1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroid/support/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010017

    const v3, 0x7f010018

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setStartAnimations(Landroid/content/Context;II)Landroid/support/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0002

    const v3, 0x10a0003

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setExitAnimations(Landroid/content/Context;II)Landroid/support/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/parrot/freeflight/util/WebUrlBuilder;->buildPrivacyPolicyUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public applyUITheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 1
    .param p1, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .prologue
    .line 122
    const v0, 0x7f0a0109

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 123
    const v0, 0x7f0a0104

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 124
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->onFinishInflate()V

    .line 57
    const v1, 0x7f0a0103

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, "learnMoreView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 59
    new-instance v1, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$1;-><init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v1, 0x7f0a0105

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    new-instance v2, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$2;-><init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;)V

    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 83
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 114
    const v0, 0x7f0a0105

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    if-eqz p1, :cond_0

    const v1, 0x7f0a0109

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 115
    return-void

    .line 114
    :cond_0
    const v1, 0x7f0a0104

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 110
    const v0, 0x7f0a0101

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public setListener(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 118
    iput-object p1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->mListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;

    .line 119
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 106
    const v0, 0x7f0a0106

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 102
    const v0, 0x7f0a0107

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method
