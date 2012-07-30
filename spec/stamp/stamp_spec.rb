require 'spec_helper'

describe StampI18n do

  it 'should use old stamp method' do
    date = Date.new(2011, 6, 9)
    date.stamp("March 1, 1999").should == "June  9, 2011"
    date.stamp("Jan 1, 1999").should == "Jun  9, 2011"
    date.stamp("Jan 01").should == "Jun 09"
    date.stamp("Sunday, May 1, 2000").should == "Thursday, June  9, 2011"
    date.stamp("Sun Aug 5").should == "Thu Jun  9"
    date.stamp("12/31/99").should == "06/09/11"
    date.stamp("DOB: 12/31/2000").should == "DOB: 06/09/2011"
  end
  
  it 'should use new localize stamp method' do
    date = Date.new(2011, 6, 9)
    date.localize_stamp("March 1, 1999").should == "Czerwiec  9, 2011"
    date.localize_stamp("Jan 1, 1999").should == "cze  9, 2011"
    date.localize_stamp("Jan 01").should == "cze 09"
    date.localize_stamp("Sunday, May 1, 2000").should == "czwartek, Czerwiec  9, 2011"
    date.localize_stamp("Sun Aug 5").should == "czw cze  9"
    date.localize_stamp("12/31/99").should == "06/09/11"
    date.localize_stamp("DOB: 12/31/2000").should == "DOB: 06/09/2011"
  end
end
