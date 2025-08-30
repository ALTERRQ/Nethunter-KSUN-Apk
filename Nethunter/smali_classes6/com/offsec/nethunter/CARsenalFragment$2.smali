.class Lcom/offsec/nethunter/CARsenalFragment$2;
.super Ljava/lang/Object;
.source "CARsenalFragment.java"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CARsenalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/CARsenalFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CARsenalFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/CARsenalFragment;

    .line 138
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    .line 141
    const v0, 0x7f0f0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 144
    const v0, 0x7f0a006a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 145
    .local v1, "settingsItem":Landroid/view/MenuItem;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 146
    const-string v4, "Settings"

    invoke-interface {p1, v3, v0, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 147
    const v0, 0x7f0800d5

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 148
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 152
    :cond_0
    const v0, 0x7f0a0065

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 153
    .local v4, "playItem":Landroid/view/MenuItem;
    if-nez v4, :cond_1

    .line 154
    const-string v5, "Play"

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 155
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 158
    :cond_1
    const v0, 0x7f0a006c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 159
    .local v5, "stopItem":Landroid/view/MenuItem;
    if-nez v5, :cond_2

    .line 160
    const-string v6, "Stop"

    invoke-interface {p1, v3, v0, v3, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 161
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 164
    :cond_2
    const v0, 0x7f0a005c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 165
    .local v6, "floatingItem":Landroid/view/MenuItem;
    if-nez v6, :cond_3

    .line 166
    const-string v7, "Floating"

    invoke-interface {p1, v3, v0, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 167
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 169
    :cond_3
    return-void
.end method

.method public synthetic onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onMenuClosed(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 196
    .local v0, "id":I
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v1}, Lcom/offsec/nethunter/CARsenalFragment;->requireView()Landroid/view/View;

    move-result-object v1

    .line 198
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f0a0171

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v2}, Lcom/offsec/nethunter/CARsenalFragment;->RunDocumentation()V

    .line 200
    return v3

    .line 201
    :cond_0
    const v2, 0x7f0a043f

    if-ne v0, v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v2}, Lcom/offsec/nethunter/CARsenalFragment;->RunSetup()V

    .line 203
    return v3

    .line 204
    :cond_1
    const v2, 0x7f0a050a

    if-ne v0, v2, :cond_2

    .line 205
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v2}, Lcom/offsec/nethunter/CARsenalFragment;->RunUpdate()V

    .line 206
    return v3

    .line 207
    :cond_2
    const v2, 0x7f0a0057

    const v4, 0x7f0a03a7

    if-ne v0, v2, :cond_4

    .line 208
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 209
    .local v2, "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 210
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v4}, Lcom/offsec/nethunter/CARsenalFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 211
    .local v4, "current":Landroidx/fragment/app/Fragment;
    instance-of v5, v4, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;

    if-eqz v5, :cond_3

    .line 212
    move-object v5, v4

    check-cast v5, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->access$100(Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;)V

    .line 215
    .end local v4    # "current":Landroidx/fragment/app/Fragment;
    :cond_3
    return v3

    .line 216
    .end local v2    # "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    :cond_4
    const v2, 0x7f0a0027

    if-ne v0, v2, :cond_5

    .line 217
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v2}, Lcom/offsec/nethunter/CARsenalFragment;->RunAbout()V

    .line 218
    return v3

    .line 219
    :cond_5
    const v2, 0x7f0a006a

    const/4 v5, 0x0

    if-ne v0, v2, :cond_7

    .line 220
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 221
    .restart local v2    # "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v4

    if-nez v4, :cond_6

    .line 222
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v4}, Lcom/offsec/nethunter/CARsenalFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 223
    .restart local v4    # "current":Landroidx/fragment/app/Fragment;
    instance-of v5, v4, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;

    if-eqz v5, :cond_6

    .line 224
    move-object v5, v4

    check-cast v5, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->access$200(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;)V

    .line 227
    .end local v4    # "current":Landroidx/fragment/app/Fragment;
    :cond_6
    return v3

    .line 228
    .end local v2    # "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    :cond_7
    const v2, 0x7f0a0065

    if-ne v0, v2, :cond_9

    .line 229
    const v2, 0x7f0a0401

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 230
    .local v2, "runICSIM":Landroid/widget/Button;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/widget/Button;->performClick()Z

    .line 231
    :cond_8
    return v3

    .line 232
    .end local v2    # "runICSIM":Landroid/widget/Button;
    :cond_9
    const v2, 0x7f0a006c

    if-ne v0, v2, :cond_b

    .line 233
    const v2, 0x7f0a049f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 234
    .local v2, "stopICSIM":Landroid/widget/Button;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/widget/Button;->performClick()Z

    .line 235
    :cond_a
    return v3

    .line 236
    .end local v2    # "stopICSIM":Landroid/widget/Button;
    :cond_b
    const v2, 0x7f0a005c

    if-ne v0, v2, :cond_d

    .line 237
    const v2, 0x7f0a027c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 238
    .local v2, "floatICSIM":Landroid/widget/Button;
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/widget/Button;->performClick()Z

    .line 239
    :cond_c
    return v3

    .line 241
    .end local v2    # "floatICSIM":Landroid/widget/Button;
    :cond_d
    return v5
.end method

.method public onPrepareMenu(Landroid/view/Menu;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    .line 173
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v0}, Lcom/offsec/nethunter/CARsenalFragment;->requireView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 174
    .local v0, "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    .line 177
    .local v1, "currentTab":I
    const v2, 0x7f0a006a

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 178
    .local v2, "settingsItem":Landroid/view/MenuItem;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 181
    :cond_1
    const v5, 0x7f0a0057

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 182
    .local v5, "canusbSettingsItem":Landroid/view/MenuItem;
    if-eqz v5, :cond_3

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 185
    :cond_3
    const v6, 0x7f0a0065

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 186
    .local v6, "playItem":Landroid/view/MenuItem;
    const v7, 0x7f0a006c

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 187
    .local v7, "stopItem":Landroid/view/MenuItem;
    const v8, 0x7f0a005c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 188
    .local v8, "floatingItem":Landroid/view/MenuItem;
    const/4 v9, 0x4

    if-eqz v6, :cond_5

    if-ne v1, v9, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 189
    :cond_5
    if-eqz v7, :cond_7

    if-ne v1, v9, :cond_6

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 190
    :cond_7
    if-eqz v8, :cond_9

    if-ne v1, v9, :cond_8

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    invoke-interface {v8, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 191
    :cond_9
    return-void
.end method
